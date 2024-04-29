<?php

namespace App\Livewire\Services\Type;

use Livewire\Component;

class Header extends Component
{
    public $type;

    public function mount($type){
        $this->type = $type;
    }

    public function render()
    {
        return view('livewire.services.type.header',
        [
            'type' => $this->type
        ]);
    }
}
