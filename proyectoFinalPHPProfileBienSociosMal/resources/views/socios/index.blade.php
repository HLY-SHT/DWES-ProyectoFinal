@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Lista de Socios</h1>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <a href="{{ route('socios.create') }}" class="btn btn-primary mb-3">Nuevo Socio</a>

    <table class="table table-striped">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Monedero</th>
                <th>Teléfono</th>
                <th>Caducidad Cuota</th>
                <th>Fecha Ingreso</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach($socios as $socio)
            <tr>
                <td>{{ $socio->nombre }}</td>
                <td>{{ $socio->apellido }}</td>
                <td>{{ number_format($socio->monedero, 2) }} €</td>
                <td>{{ $socio->telefono }}</td>
                <td>
                    @php
                        $fechaCaducidad = \Carbon\Carbon::parse($socio->fecha_caducidad_cuota);
                        $fechaFormateada = $fechaCaducidad->format('d/m/Y');
                    @endphp

                    <!-- Comprobar si la fecha de caducidad ha pasado -->
                    <span class="{{ $fechaCaducidad->isPast() ? 'text-danger' : '' }}">
                        {{ $fechaFormateada }}
                    </span>
                </td>
                <td>{{ \Carbon\Carbon::parse($socio->fecha_ingreso)->format('d/m/Y') }}</td>
                <td>
                    <a href="{{ route('socios.show', $socio) }}" class="btn btn-info btn-sm">Ver</a>
                    <a href="{{ route('socios.edit', $socio) }}" class="btn btn-warning btn-sm">Editar</a>
                    <form action="{{ route('socios.destroy', $socio) }}" method="POST" class="d-inline">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger btn-sm" onclick="return confirm('¿Deseas eliminar este socio?')">Eliminar</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <!-- PAGINACIÓN -->
    <div class="d-flex justify-content-center">
        {{ $socios->links('pagination::bootstrap-4') }}
    </div>
</div>
@endsection
