<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Type;

class Features extends Component
{
    public $type;

    public function mount(){
        $this->type = Type::all();
    }

    public function render()
    {
        return view('livewire.features',
        [
            'types' => $this->type,
        ]);
    }
}
