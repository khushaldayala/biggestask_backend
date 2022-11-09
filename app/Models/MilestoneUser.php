<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MilestoneUser extends Model
{
    use HasFactory;

    public function milestone()
    {
        return $this->belongsTo(Milestone::class);
    }
}
