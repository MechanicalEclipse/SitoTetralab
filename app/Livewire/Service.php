<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Services;
use App\Models\SubServices;

class Service extends Component
{
    public $service;
    public $subservices;

    public function mount(Services $services){
        $this->service = $services;
        $this->subservices = SubServices::where('service_id', $this->service->id)->get();
    }

    public function render()
    {
        return view('livewire.services.service.service', [
            'service'=>$this->service,
        ]);
    }
}
