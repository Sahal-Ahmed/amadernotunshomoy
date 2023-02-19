<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    use HasFactory;

    protected $fillable=[
        'name','category_id','slug','description','meta_title','meta_description','meta_keyword','navbar_status','status','created_by'
];

public function category(){
    return $this->belongsTo(Category::class, 'category_id','id');
}

}
