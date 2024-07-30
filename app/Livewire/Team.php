<?php

namespace App\Livewire;

use App\Models\Team as ModelsTeam;
use Livewire\Component;

class Team extends Component
{
    public $team;

    public function mount(){
        $this->team = ModelsTeam::all();
    }

    public function render()
    {
        return view('livewire.team', [
            'team'=>$this->team,
        ]);
    }
}
