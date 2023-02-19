<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;
use App\Models\Subcategory;

class Post extends Model
{
    use HasFactory;

    protected $table='posts';

    protected $fillable=[
        'category_id',
        'subcategory_id',
        'name',
        'slug',
        'description',
        'image',
        'yt_iframe',
        'meta_title',
        'meta_description',
        'meta_keyword',
        'status',
        'created_by'
    ];

    public function category(){
        return $this->belongsTo(Category::class, 'category_id','id');
    }

    public function subcategory(){
        return $this->belongsTo(Subcategory::class, 'subcategory_id','id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by','id');
    }

   
}
