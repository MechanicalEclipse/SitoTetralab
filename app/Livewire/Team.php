<?php

namespace App\Livewire;

use Livewire\Component;

class Team extends Component
{
    public $team;

    public function mount(){

    }

    public function render()
    {
        return view('livewire.team');
    }
}
