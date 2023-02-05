<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Hootlex\Moderation\Moderatable;

class Post extends Model
{
    use HasFactory;
    use Moderatable;
}
