<?php

use App\Http\Controllers\SubsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/websites', [SubsController::class, 'allWebsites']);
Route::get('/websites/{id}/posts', [SubsController::class, 'websitesPosts']);
Route::post('/websites/{id}/sub', [SubsController::class, 'doSubscribe']);
