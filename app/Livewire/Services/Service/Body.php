<?php

namespace App\Livewire\Services\Service;

use Livewire\Component;
use App\Models\Services;
use App\Models\SubServices;

class Body extends Component
{
    public $subservice;
    public function mount($subservice){
        $this->subservice = $subservice;
    }


    public function render()
    {
        return view('livewire.services.service.body',
        [
            'subservice' => $this->subservice,
        ]);
    }
}
