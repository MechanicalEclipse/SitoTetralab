<?php

namespace App\Livewire\Services\Type;

use Livewire\Component;

class Body extends Component
{
    public $service;
    public $type;

    public function mount($service, $type){
        $this->service = $service;
        $this->type = $type;
    }


    public function render()
    {
        return view('livewire.services.type.body',
        [
            'service' => $this->service,
            'type' => $this->type
        ]);
    }
}
