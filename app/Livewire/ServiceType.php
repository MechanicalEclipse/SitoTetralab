<?php

namespace App\Livewire;

use App\Models\Type;
use Livewire\Component;
use App\Models\Services;

class ServiceType extends Component
{
    public $type;
    public $services;

    public function mount(Type $type){
        $this->type = Type::with('service')->where("slug", $type->slug)->firstorfail();
        $this->services = $this->type->service;
    }

    public function render()
    {
        return view('livewire.services.type.service-type',
    [
        'type' => $this->type,
        'services' => $this->services
    ]);
    }
}