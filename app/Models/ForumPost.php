<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\DB;

class ForumPost extends Model
{
    use HasApiTokens, HasFactory;

    protected $fillable = ['title', 'body', 'users_id', 'title_fr', 'body_fr'];

    static public function selectArticles($lang){
        $lg =null;

        if(isset($lang) && $lang == 'fr'){
            $lg = "_fr";

        }
        $query = ForumPost::Select('id','users_id',
                                    DB::raw('(case when title'.$lg.' is null then title else title'.$lg.' end) as title'),
                                    DB::raw('(case when body'.$lg.' is null then body else body'.$lg.' end) as body')
        )
        ->OrderBy('created_at')
        ->get();
        return $query;
    }
}
