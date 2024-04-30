<?php

use Illuminate\Support\Facades\Route;
use App\Livewire\ServiceType;
use App\Livewire\Service;

Route::get('/', function () {
    return view('home');
});

Route::get('team', function () {
    return view('team');
})->name("team");

// Route::get('consulenza-ambientale', function () {
//     return view('consulenza-ambientale');
// })->name("consulenza-ambientale");

Route::get('/servizi/{type:slug}', ServiceType::class)->name("service-type-route");
Route::get('/servizi/{type:slug}/{services:slug}', Service::class)->name("service-route");