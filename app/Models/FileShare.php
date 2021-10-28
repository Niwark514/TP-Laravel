<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class FileShare extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'title_fr', 'user_id', 'url'];

    static public function selectFiles($lang){
        $lg =null;

        if(isset($lang) && $lang == 'fr'){
            $lg = "_fr";

        }
        $query = FileShare::Select('id','user_id','url',
            DB::raw('(case when title'.$lg.' is null then title else title'.$lg.' end) as title')
        )
            ->OrderBy('created_at')
            ->get();
        return $query;
    }
    public function student() {
            return $this->hasOne(Etudiant::class, 'id', 'user_id');
    }

}
