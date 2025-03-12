@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Nuevo Socio</h1>
    <form action="{{ route('socios.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" name="nombre" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" name="apellido" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="monedero" class="form-label">Monedero</label>
            <input type="number" name="monedero" class="form-control" step="0.01" value="0.00" required>
        </div>
        <div class="mb-3">
            <label for="telefono" class="form-label">Teléfono</label>
            <input type="text" name="telefono" class="form-control">
        </div>
        <div class="mb-3">
            <label for="direccion" class="form-label">Dirección</label>
            <textarea name="direccion" class="form-control"></textarea>
        </div>
        <div class="mb-3">
            <label for="fecha_ingreso" class="form-label">Fecha de Ingreso</label>
            <input type="date" name="fecha_ingreso" class="form-control">
        </div>
        <div class="mb-3">
            <label for="fecha_caducidad_cuota" class="form-label">Fecha de Caducidad de la Cuota</label>
            <input type="date" name="fecha_caducidad_cuota" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </form>
</div>
@endsection
