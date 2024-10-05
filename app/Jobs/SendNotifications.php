<?php

namespace App\Jobs;

use App\Models\Post;
use App\Models\Subs;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class SendNotifications implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(Post $post)
    {
        $this->post = $post;
    }


    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $subscriptions = Subs::where('website_id', $this->post->website_id)->get();
        foreach ($subscriptions as $subscription) {
            if (!$this->post->notified) {
                Mail::raw($this->post->description, function ($msg) use ($subscription) {
                    $msg->to($subscription->email)
                        ->subject('A new Post is available!');
                });
            }
        }
        $this->post->sent = true;
        $this->post->save();
    }
}
