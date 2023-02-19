<?php

use Illuminate\Support\Facades\Route;





Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/',[App\Http\Controllers\Frontend\FrontendController::class, 'index']);

Route::get('category/{category_slug}', [App\Http\Controllers\Frontend\FrontendController::class, 'viewCategoryPost']);
Route::get('category/{category_slug}/{post_slug}', [App\Http\Controllers\Frontend\FrontendController::class, 'viewPost']);


//for all users

    Route::get('admin/dashboard',[App\Http\Controllers\Admin\DashboardController::class, 'index']);

    
    Route::get('admin/posts', [App\Http\Controllers\Admin\PostController::class, 'index']);

    Route::get('admin/add-post', [App\Http\Controllers\Admin\PostController::class, 'create']);

    Route::post('admin/add-post', [App\Http\Controllers\Admin\PostController::class, 'store']);

    Route::get('admin/post/{post_id}',[App\Http\Controllers\Admin\PostController::class, 'edit']);

    Route::put('admin/update-post/{post_id}',[App\Http\Controllers\Admin\PostController::class, 'update']);

    //Route::get('delete-post/{post_id}',[App\Http\Controllers\Admin\PostController::class, 'destroy']);
    Route::post('admin/delete-post',[App\Http\Controllers\Admin\PostController::class, 'destroy']);

//end

//for admin

Route::prefix('admin')->middleware(['auth','isAdmin'])->group(function(){

    Route::get('category',[App\Http\Controllers\Admin\CategoryController::class, 'index']);

    Route::get('add-category',[App\Http\Controllers\Admin\CategoryController::class, 'create']);


    Route::post('add-category',[App\Http\Controllers\Admin\CategoryController::class, 'store']);

    Route::get('edit-category/{category_id}',[App\Http\Controllers\Admin\CategoryController::class, 'edit']);

    Route::put('update-category/{category_id}',[App\Http\Controllers\Admin\CategoryController::class, 'update']);
    //Route::get('delete-category/{category_id}', [App\Http\Controllers\Admin\CategoryController::class, 'destroy']);

    Route::post('delete-category', [App\Http\Controllers\Admin\CategoryController::class, 'destroy']);


   
    Route::get('subcategory',[App\Http\Controllers\Admin\SubcategoryController::class, 'index']);
    Route::get('add-subcategory',[App\Http\Controllers\Admin\SubcategoryController::class, 'create']);
    Route::post('add-subcategory',[App\Http\Controllers\Admin\SubcategoryController::class, 'store']);
    Route::get('edit-subcategory/{subcategory_id}',[App\Http\Controllers\Admin\SubcategoryController::class, 'edit']);
    Route::post('delete-subcategory',[App\Http\Controllers\Admin\SubcategoryController::class, 'destroy']);


    Route::get('users',[App\Http\Controllers\Admin\UserController::class, 'index']);
    Route::get('add-user',[App\Http\Controllers\Admin\UserController::class, 'create']);
    Route::post('add-user',[App\Http\Controllers\Admin\UserController::class, 'store']);
    Route::post('delete-user',[App\Http\Controllers\Admin\UserController::class, 'destroy']);
    
    Route::get('user/{user_id}',[App\Http\Controllers\Admin\UserController::class, 'edit']);
    Route::put('update-user/{user_id}',[App\Http\Controllers\Admin\UserController::class, 'update']);
});

//end

Route::post('/getState',[App\Http\Controllers\Admin\PostController::class, 'getState']);

