<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

//Route::get('/socios', function () {
  //  return view('socios.show');
//})->middleware(['auth', 'verified'])->name('socios');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

use App\Http\Controllers\SocioController;

// Rutas protegidas por autenticación
Route::middleware(['auth'])->group(function () {
    Route::resource('socios', SocioController::class);
});

require __DIR__.'/auth.php';
