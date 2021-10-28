<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Etudiant extends Model
{
    use HasApiTokens, HasFactory;

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     *
     *
     */

    public function ville()
    {
        return $this->hasOne(Ville::class, 'id', 'ville_id');
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'adress',
        'email',
        'phone',
        'birth_date',
        'ville_id',
    ];
}
