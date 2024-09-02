<?php

namespace App\Livewire;

use App\Models\Type;
use Livewire\Component;

class Footer extends Component
{
    public $type;

    public function mount(){
        $this->type = Type::all();
    }

    public function render()
    {
        return view('livewire.footer',
        [
            'types' => $this->type,
        ]);
    }
}
