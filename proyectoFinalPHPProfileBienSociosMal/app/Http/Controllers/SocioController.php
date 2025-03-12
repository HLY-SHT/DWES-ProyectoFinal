<?php

namespace App\Http\Controllers;

use App\Models\Socio;
use Illuminate\Http\Request;

class SocioController extends Controller
{
    // Mostrar la lista de socios
    public function index()
    {
        $socios = Socio::paginate(10); // O usar paginate() si la lista es larga
        return view('socios.index', compact('socios'));
    }

    // Mostrar el formulario para crear un nuevo socio
    public function create()
    {
        return view('socios.create');
    }

    // Guardar un nuevo socio en la base de datos
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nombre'                => 'required|max:255',
            'apellido'              => 'required|max:255',
            'monedero'              => 'required|numeric',
            'telefono'              => 'nullable|string',
            'direccion'             => 'nullable|string',
            'fecha_ingreso'         => 'nullable|date',
            'fecha_caducidad_cuota' => 'nullable|date',
        ]);

        Socio::create($validated);

        return redirect()->route('socios.index')
                         ->with('success', 'Socio creado correctamente');
    }

    // Mostrar los detalles de un socio (opcional)
    public function show(Socio $socio)
    {
        return view('socios.show', compact('socio'));
    }

    // Mostrar el formulario para editar un socio
    public function edit(Socio $socio)
    {
        return view('socios.edit', compact('socio'));
    }

    // Actualizar la información de un socio
    public function update(Request $request, Socio $socio)
    {
        $validated = $request->validate([
            'nombre'                => 'required|max:255',
            'apellido'              => 'required|max:255',
            'monedero'              => 'required|numeric',
            'telefono'              => 'nullable|string',
            'direccion'             => 'nullable|string',
            'fecha_ingreso'         => 'nullable|date',
            'fecha_caducidad_cuota' => 'nullable|date',
        ]);

        $socio->update($validated);

        return redirect()->route('socios.index')
                         ->with('success', 'Socio actualizado correctamente');
    }

    // Eliminar un socio
    public function destroy(Socio $socio)
    {
        $socio->delete();

        return redirect()->route('socios.index')
                         ->with('success', 'Socio eliminado correctamente');
    }
}
