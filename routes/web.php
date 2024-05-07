<?php

use Illuminate\Support\Facades\Route;
use App\Livewire\ServiceType;
use App\Livewire\Service;
use App\Livewire\Storia;
use App\Livewire\Team;
use App\Livewire\Certificazioni;

Route::get('/', function () {
    return view('home');
});

Route::get('team', Team::class)->name("team");

// Route::get('consulenza-ambientale', function () {
//     return view('consulenza-ambientale');
// })->name("consulenza-ambientale");

Route::get('/servizi/{type:slug}', ServiceType::class)->name("service-type-route");
Route::get('/servizi/{type:slug}/{services:slug}', Service::class)->name("service-route");

Route::get('/storia', Storia::class)->name("storia");
Route::get('/certificazioni', Certificazioni::class)->name("certificazioni");