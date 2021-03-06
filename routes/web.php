<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/test',function(){
  return App\User::find(1)->profile;
});

Route::get('/',[
  'uses' => 'FrontEndController@index',
  'as' => 'index'
]);

Route::get('/post/{slug}',[
  'uses' => 'FrontEndController@singlePost',
  'as' => 'post.single'
]);

Route::get('/category/{id}',[
  'uses' => 'FrontEndController@categoryPost',
  'as' => 'category.post'
]);

Route::get('/tag/{id}',[
  'uses' => 'FrontEndController@tagPost',
  'as' => 'tag.post'
]);

Route::get('/results',[
    'uses' => 'FrontEndController@results',
    'as' => 'results'
]);

Auth::routes();

Route::group(['prefix' => 'admin', 'middleware' => 'auth'],function(){

  Route::get('/home', [
    'uses' => 'HomeController@index',
    'as'   => 'home'
  ]);

  Route::get('/post/create',[
    'uses' => 'PostsController@create',
    'as'   => 'post.create'
  ]);

  Route::post('/post/store',[
    'uses' => 'PostsController@store',
    'as'   => 'post.store'
  ]);

  Route::get('/category/create',[
    'uses' => 'CategoriesController@create',
    'as'   => 'category.create'
  ]);

  Route::post('/category/store',[
    'uses' => 'CategoriesController@store',
    'as'   => 'category.store'
  ]);

  Route::get('/categories',[
    'uses' => 'CategoriesController@index',
    'as'   => 'categories'
  ]);

  Route::get('/category/edit/{id}',[
    'uses' => 'CategoriesController@edit',
    'as'   => 'category.edit'
  ]);

  Route::get('/category/delete/{id}',[
    'uses' => 'CategoriesController@destroy',
    'as'   => 'category.delete'
  ]);

  Route::post('/category/update/{id}',[
    'uses' => 'CategoriesController@update',
    'as'   => 'category.update'
  ]);

  Route::get('/posts',[
    'uses' => 'PostsController@index',
    'as'   => 'posts'
  ]);

  Route::get('/post/edit/{id}',[
    'uses' => 'PostsController@edit',
    'as'   => 'post.edit'
  ]);

  Route::get('/post/delete/{id}',[
    'uses' => 'PostsController@destroy',
    'as'   => 'post.delete'
  ]);

  Route::get('/post/trashed',[
    'uses' => 'PostsController@trashed',
    'as'   => 'posts.trashed'
  ]);

  Route::get('/post/restore/{id}',[
    'uses' => 'PostsController@restore',
    'as'   => 'post.restore'
  ]);

  Route::get('/post/kill/{id}',[
    'uses' => 'PostsController@kill',
    'as'   => 'post.kill'
  ]);

  Route::post('/post/update/{id}',[
    'uses' => 'PostsController@update',
    'as'   => 'post.update'
  ]);

  Route::get('/tags',[
    'uses' => 'TagsController@index',
    'as'   => 'tags'
  ]);

  Route::get('/tag/create',[
    'uses' => 'TagsController@create',
    'as'   => 'tag.create'
  ]);

  Route::post('/tag/store',[
    'uses' => 'TagsController@store',
    'as'   => 'tag.store'
  ]);

  Route::get('/tag/edit/{id}',[
    'uses' => 'TagsController@edit',
    'as'   => 'tag.edit'
  ]);

  Route::post('/tag/update/{id}',[
    'uses' => 'TagsController@update',
    'as'   => 'tag.update'
  ]);

  Route::get('/tag/delete/{id}',[
    'uses' => 'TagsController@destroy',
    'as'   => 'tag.delete'
  ]);

  Route::get('/users',[
    'uses' => 'UsersController@index',
    'as'   => 'users'
  ]);

  Route::get('/user/create',[
    'uses' => 'UsersController@create',
    'as'   => 'user.create'
  ]);

  Route::post('/user/store',[
    'uses' => 'UsersController@store',
    'as'   => 'user.store'
  ]);

  Route::get('/user/admin/{id}',[
    'uses' => 'UsersController@admin',
    'as'   => 'user.admin'
  ])->middleware('admin');

  Route::get('/user/not_admin/{id}',[
    'uses' => 'UsersController@not_admin',
    'as'   => 'user.not.admin'
  ]);

  Route::get('/profile',[
    'uses' => 'ProfilesController@index',
    'as'   => 'profile'
  ]);

  Route::post('/profile/update',[
    'uses' => 'ProfilesController@update',
    'as'   => 'profile.update'
  ]);

  Route::get('/user/delete/{id}',[
    'uses' => 'UsersController@destroy',
    'as'   => 'user.delete'
  ]);

  Route::get('/settings',[
    'uses' => 'SettingsController@index',
    'as'   => 'settings'
  ]);

  Route::post('/settings/update',[
    'uses' => 'SettingsController@update',
    'as'   => 'settings.update'
  ]);

});
