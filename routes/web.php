<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});

Route::get('team', function () {
    return view('team');
})->name("team");

Route::get('consulenza-ambientale', function () {
    return view('consulenza-ambientale');
})->name("consulenza-ambientale");