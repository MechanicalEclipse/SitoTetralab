<?php

namespace App\Livewire\Services\Service;

use Livewire\Component;
use App\Models\Services;
use App\Models\SubServices;

class Body extends Component
{
    public $subservice;
    public $index;
    public function mount($subservice, $index){
        $this->subservice = $subservice;
        $this->index = $index;
    }


    public function render()
    {
        return view('livewire.services.service.body',
        [
            'subservice' => $this->subservice,
            'index' => $this->index
        ]);
    }
}
