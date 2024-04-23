<?php

namespace App\Livewire\Services;

use Livewire\Component;

class Header extends Component
{
    public $type;

    public function mount($type){
        $this->type = $type;
    }

    public function render()
    {
        return view('livewire.services.header',
    [
        'type' => $this->type
    ]);
    }
}
