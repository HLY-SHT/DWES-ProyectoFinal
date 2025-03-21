<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Socio extends Model
{
    use HasFactory;

    protected $fillable = [
        'nombre',
        'apellido',
        'monedero',
        'telefono',
        'direccion',
        'fecha_ingreso',
        'fecha_caducidad_cuota',
    ];
}
