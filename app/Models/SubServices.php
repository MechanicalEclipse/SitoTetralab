<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SubServices extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'info',
        'description',
        'service_id',
        'image',
    ];

    public function service(): BelongsTo
    {
        return $this->belongsTo(Services::class);
    }
}
