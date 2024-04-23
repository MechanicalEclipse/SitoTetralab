<?php

namespace App\Livewire\Services;

use Livewire\Component;

class Service extends Component
{
    public $service;

    public function mount($service){
        $this->service = $service;
    }

    public function render()
    {
        return view('livewire.services.service',
        [
            'service' => $this->service
        ]);
    }
}
