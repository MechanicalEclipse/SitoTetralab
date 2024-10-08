<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Type extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'slug',
        'image',
    ];

    public function service(): HasMany
    {
        return $this->hasMany(Services::class);
    }
    
    public function getRouteKeyName()
    {
        return 'slug';
    }
}
