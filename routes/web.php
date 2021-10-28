<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\VilleController;
use \App\Http\Controllers\EtudiantController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\ForumPostController;
use App\Http\Controllers\LocalizationController;
use App\Http\Controllers\FileShareController;
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




/* Routes liées au Middleware */

Route::get('/lang/{locale}', [LocalizationController::class, 'index']);

/* Routes liées à l'autentification */
Route::get('login', [CustomAuthController::class, 'index']);
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom');

Route::get('logout', [CustomAuthController::class, 'logout'])->name('logout');

Route::get('registration/{etudiant}', [CustomAuthController::class, 'create']);
Route::post('custom-registration', [CustomAuthController::class, 'store'])->name('register.custom');

/*Route page d'accueil*/
Route::get('/', [EtudiantController::class, 'accueil']);

/* Routes liées au forum */
Route::get('/forum', [ForumPostController::class, 'index']);
Route::get('/forum/{post}', [ForumPostController::class, 'show']);

Route::get('/create/post', [ForumPostController::class, 'create']);
Route::post('/create/post', [ForumPostController::class, 'store']);

Route::get('/forum/{post}/edit', [ForumPostController::class, 'edit'])->middleware('auth');
Route::put('/forum/{post}/edit', [ForumPostController::class, 'update'])->middleware('auth');

Route::delete('/forum/{post}', [ForumPostController::class, 'destroy'])->middleware('auth');

/* Routes liées au FileShare */
Route::get('/fileShare', [FileShareController::class, 'index']);
Route::get('download', [FileShareController::class,'download']);


Route::get('/create/fileShare', [FileShareController::class, 'create']);
Route::post('/create/fileShare', [FileShareController::class, 'store']);

Route::get('/fileShare/{file}/edit', [FileShareController::class, 'edit']);
Route::put('/fileShare/{file}/edit', [FileShareController::class, 'update']);

Route::delete('/fileShare/{file}', [FileShareController::class, 'destroy'])->middleware('auth');


/* Routes liées aux étudiants */
Route::get('/listeEtudiant', [EtudiantController::class, 'index']);
Route::get('/{etudiant}', [EtudiantController::class, 'show']);

Route::get('/create/etudiant', [EtudiantController::class, 'create']);
Route::post('/create/etudiant', [EtudiantController::class, 'store']);

Route::get('/{etudiant}/edit', [EtudiantController::class, 'edit']);
Route::put('/{etudiant}/edit', [EtudiantController::class, 'update']);

Route::delete('/{etudiant}', [EtudiantController::class, 'destroy']);
