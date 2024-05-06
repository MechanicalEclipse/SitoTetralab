<?php

namespace App\Livewire\Services\Service;

use Livewire\Component;
use App\Models\Services;
use App\Models\SubServices;

class Body extends Component
{
    public $service;
    public $subservices;


    public function mount($service){
        $this->service = $service;
        $this->subservices = SubServices::where('service_id', $service->id)->get();
    }

    public function render()
    {
        return view('livewire.services.service.body');
    }
}
