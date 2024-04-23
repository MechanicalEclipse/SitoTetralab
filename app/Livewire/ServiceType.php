<?php

namespace App\Livewire;

use App\Models\Type;
use Livewire\Component;
use App\Models\Services;

class ServiceType extends Component
{
    public $type;
    public $services;

    public function mount($slug){
        $this->type = Type::with('service')->firstorfail();
        $this->services = $this->type->service;
    }

    public function render()
    {
        return view('livewire.service-type',
    [
        'type' => $this->type,
        'services' => $this->services
    ]);
    }
}