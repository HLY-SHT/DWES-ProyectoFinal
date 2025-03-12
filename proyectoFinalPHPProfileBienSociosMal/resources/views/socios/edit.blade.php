@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Editar Socio</h1>

    @if($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('socios.update', $socio) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" name="nombre" class="form-control" value="{{ $socio->nombre }}" required>
        </div>

        <div class="mb-3">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" name="apellido" class="form-control" value="{{ $socio->apellido }}" required>
        </div>

        <div class="mb-3">
            <label for="monedero" class="form-label">Monedero</label>
            <input type="number" step="0.01" name="monedero" class="form-control" value="{{ $socio->monedero }}" required>
        </div>

        <div class="mb-3">
            <label for="telefono" class="form-label">Teléfono</label>
            <input type="text" name="telefono" class="form-control" value="{{ $socio->telefono }}">
        </div>

        <div class="mb-3">
            <label for="direccion" class="form-label">Dirección</label>
            <textarea name="direccion" class="form-control">{{ $socio->direccion }}</textarea>
        </div>

        <div class="mb-3">
            <label for="fecha_ingreso" class="form-label">Fecha de Ingreso</label>
            <input type="date" name="fecha_ingreso" class="form-control" value="{{ $socio->fecha_ingreso }}">
        </div>

        <div class="mb-3">
            <label for="fecha_caducidad_cuota" class="form-label">Fecha de Caducidad de Cuota</label>
            <input type="date" name="fecha_caducidad_cuota" class="form-control" value="{{ $socio->fecha_caducidad_cuota }}">
        </div>

        <button type="submit" class="btn btn-primary">Actualizar</button>
        <a href="{{ route('socios.index') }}" class="btn btn-secondary">Cancelar</a>
    </form>
</div>
@endsection
