<?php

namespace Database\Factories;

use App\Models\Post;
use App\Models\Website;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    protected $model = Post::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return  [
            'website_id' => Website::factory(), // Generates a random website for the post
            'title' => $this->faker->sentence(6), // Generates a random title
            'description' => $this->faker->paragraph, // Generates a random description
            'sent' => false, // Set to false initially
        ];
    }
}
