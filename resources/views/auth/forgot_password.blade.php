@extends('layouts.app')
@section('title', 'Quên mật khẩu')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header bg-warning text-white text-center">
                    <h3 class="h5 mb-0">Quên mật khẩu</h3>
                </div>
                <div class="card-body">
                    @if (session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form method="POST" action="{{ route('auth.postForgotPassword') }}">
                        @csrf
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email của bạn" required>
                        </div>
                        <button type="submit" class="btn btn-warning w-100">Gửi link đặt lại mật khẩu</button>
                    </form>
                    <p class="text-center mt-3">
                        <a href="{{ route('auth.login') }}" class="text-primary">Quay lại đăng nhập</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
@endsection
