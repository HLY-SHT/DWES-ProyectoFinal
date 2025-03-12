@extends('layouts.app')

@section('content')
<div class="container">
    <!-- Encabezado (puedes usar Bootstrap, Tailwind o lo que desees) -->
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        {{ __('Profile') }}
    </h2>

    <div class="py-4">
        <div class="container-sm space-y-4">
            <!-- Update Profile Information Section -->
            <div class="card shadow-sm mb-4">
                <div class="card-body">
                    <div class="max-w-xl">
                        @include('profile.partials.update-profile-information-form')
                    </div>
                </div>
            </div>

            <!-- Update Password Section -->
            <div class="card shadow-sm mb-4">
                <div class="card-body">
                    <div class="max-w-xl">
                        @include('profile.partials.update-password-form')
                    </div>
                </div>
            </div>

            <!-- Delete User Section -->
            <div class="card shadow-sm mb-4">
                <div class="card-body">
                    <div class="max-w-xl">
                        @include('profile.partials.delete-user-form')
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
