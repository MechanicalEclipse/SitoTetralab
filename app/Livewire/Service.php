<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Services;

class Service extends Component
{
    public $service;

    public function mount(Services $services){
        $this->service = $services;
    }

    public function render()
    {
        return view('livewire.services.service.service', [
            'service'=>$this->service,
        ]);
    }
}
