<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\History;

class Storia extends Component
{
    public $history;

    public function mount(){
        $this->history = History::all();
    }

    public function render()
    {
        return view('livewire.storia',[
            'history'=>$this->history,
        ]);
    }
}
