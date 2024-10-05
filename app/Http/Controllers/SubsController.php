<?php

namespace App\Http\Controllers;

use App\Jobs\SendNotifications;
use App\Models\Post;
use App\Models\Subs;
use App\Models\Website;
use Illuminate\Http\Request;

class SubsController extends Controller
{
    //

    public function allWebsites(Request $request)
    {
        $websites = Website::all()->toArray();
        return response()->json($websites, 201);
    }

    public function websitesPosts(Request $request, $id)
    {
        $posts = Post::where("website_id", $id)->get();
        return response()->json($posts, 201);
    }



    // we don't need it right now
    public function newWebsite(Request $request)
    {
        $validated = $request->validate(['name' => 'required|string|unique:websites']);
        $website = Website::create($validated);
        return response()->json($website, 201);
    }

    // we don't need it right now
    public function newPost(Request $request, $websiteId)
    {
        $title = $request->input('title');
        $description = $request->input('description');

        $post = Post::create([
            'website_id' => $websiteId,
            'title' => $title,
            'description' => $description
        ]);

        SendNotifications::dispatch($post);

        return response()->json($post, 201);
    }

    public function doSubscribe(Request $request, $websiteId)
    {
        $validated = $request->validate([
            'email' => 'required|email|unique:subs',
        ]);

        $subscription = Subs::create([
            'website_id' => $websiteId,
            'email' => $validated['email'],
        ]);

        return response()->json($subscription, 201);
    }
}
