<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;


class Services extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'info',
        'description',
        'type_id',
        'image',
    ];

    public function type(): BelongsTo
    {
        return $this->belongsTo(Type::class);
    }

    public function subservice(): HasMany
    {
        return $this->hasMany(SubServices::class);
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }

}
