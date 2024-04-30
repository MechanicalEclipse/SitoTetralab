<?php

namespace App\Livewire\Services\Service;

use Livewire\Component;

class Header extends Component
{
    public $service;

    public function mount($service){
        $this->service = $service;
    }

    public function render()
    {
        return view('livewire.services.service.header',[
            'service'  => $this->service,
        ]);
    }
}
