@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4">Detalles del Socio</h1>

    <div class="card">
        <div class="card-header">
            Información del Socio
        </div>
        <div class="card-body">
            <h5 class="card-title">{{ $socio->nombre }} {{ $socio->apellido }}</h5>
            <p class="card-text"><strong>Monedero:</strong> {{ number_format($socio->monedero, 2) }} €</p>
            <p class="card-text"><strong>Teléfono:</strong> {{ $socio->telefono ?? 'No disponible' }}</p>
            <p class="card-text"><strong>Dirección:</strong> {{ $socio->direccion ?? 'No especificada' }}</p>
            <p class="card-text"><strong>Fecha de Ingreso:</strong> {{ $socio->fecha_ingreso }}</p>
            <p class="card-text"><strong>Fecha de Caducidad de Cuota:</strong> {{ $socio->fecha_caducidad_cuota }}</p>

            <a href="{{ route('socios.index') }}" class="btn btn-secondary">Volver a la lista</a>
            <a href="{{ route('socios.edit', $socio) }}" class="btn btn-warning">Editar</a>

            <form action="{{ route('socios.destroy', $socio) }}" method="POST" class="d-inline">
                @csrf
                @method('DELETE')
                <button class="btn btn-danger" onclick="return confirm('¿Deseas eliminar este socio?')">Eliminar</button>
            </form>
        </div>
    </div>
</div>
@endsection
