<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PostController;
use App\Http\Controllers\RecaptchaController;

use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;

use App\Http\Controllers\HomeController;

use App\Models\Blog;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__ . '/auth.php';


// Route::get('/home', [HomeController::class, 'index'])->name('home');

// Route::resource('posts', PostController::class);
Route::get('post', [PostController::class, 'create']);
Route::post('post', [PostController::class, 'store']);
Route::get('postview', [PostController::class, 'index']);
Route::get('edit/{id}', [PostController::class, 'edit']);
Route::post('edit/{id}', [PostController::class, 'update']);

Route::get('recaptchacreate', [RecaptchaController::class, 'create']);
Route::post('store', [RecaptchaController::class, 'store']);

Route::get('createcaptcha', [RecaptchaController::class, 'captchacreate']);
Route::post('captcha', [RecaptchaController::class, 'captchaValidate']);
Route::get('refreshcaptcha', [RecaptchaController::class, 'refreshCaptcha']);

Route::group(['middleware' => ['auth']], function () {
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('products', ProductController::class);
});

Route::get('/blogs_itsolutionstuff_database', function () {
    // $products = DB::connection('mysql2')->table("blogs_itsolutionstuff")->get();
    // dd($products);
    $products = Blog::all();
    dd($products);
});

Route::get('my-notification/{type}', [HomeController::class, 'myNotification']);

Route::get('qr-code-g', function () {
    \QrCode::size(500)
        ->format('png')
        ->generate('ItSolutionStuff.com', public_path('images/qrcode.png'));
    return view('qrCode');
});
