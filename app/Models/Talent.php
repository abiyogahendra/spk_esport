<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Talent extends Authenticatable
{
    use HasFactory, Notifiable;
    protected $table = 'talent_survey';
    protected $primaryKey = 'id_survey';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id_talent',
        'player_experience',
        'skill',
        'intellegence',
        'attitude',
        'turnamen',
        'target',
        'created_at',
        'updated_at',
    ];

}
