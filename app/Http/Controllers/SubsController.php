<?php

namespace App\Http\Controllers;

use App\Models\Subs;
use App\Models\Website;
use Illuminate\Http\Request;

class SubsController extends Controller
{
    //
    public function newWebsite(Request $request)
    {
        $validated = $request->validate(['name' => 'required|string|unique:websites']);
        $website = Website::create($validated);
        return response()->json($website, 201);
    }

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
            'email' => 'required|email|unique:subscriptions',
        ]);

        $subscription = Subs::create([
            'website_id' => $websiteId,
            'email' => $validated['email'],
        ]);

        return response()->json($subscription, 201);
    }
}
