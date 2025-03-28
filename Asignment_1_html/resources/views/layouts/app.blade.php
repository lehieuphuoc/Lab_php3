<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title') - Tin Tức Việt Nam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>
<body>
    <!-- Header -->
    <header class="bg-light border-bottom py-2">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-3">
                    <a href="{{ route('home.index') }}" class="navbar-brand fw-bold text-primary">Tin Tức Việt Nam</a>
                </div>
                <div class="col-md-6">
                    <form action="{{ route('news.search') }}" method="GET" class="d-flex">
                        <input type="text" name="q" class="form-control me-2" placeholder="Tìm kiếm tin tức..." value="{{ request()->q }}">
                        <button type="submit" class="btn btn-primary">Tìm</button>
                    </form>
                </div>
                <div class="col-md-3 text-end">
                    @auth
                        <div class="dropdown d-inline">
                            <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown">
                                {{ Auth::user()->name }}
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Trang cá nhân</a></li>
                                <li>
                                    <form action="{{ route('auth.logout') }}" method="POST">
                                        @csrf
                                        <button type="submit" class="dropdown-item">Đăng xuất</button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    @else
                        <a href="{{ route('auth.login') }}" class="text-primary">Đăng nhập</a> | 
                        <a href="{{ route('auth.register') }}" class="text-primary">Đăng ký</a>
                    @endauth
                </div>
            </div>
        </div>
    </header>

    <!-- Menu điều hướng -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="{{ route('home.index') }}">Trang chủ</a></li>
                    @foreach (\App\Models\Category::all() as $category)
                        <li class="nav-item"><a class="nav-link" href="{{ route('news.newsCate', $category->slug) }}">{{ $category->name }}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>
    </nav>

    <!-- Nội dung chính -->
    <div class="container my-4">
        <div class="row">
            <article class="col-lg-8">
                @yield('content')
            </article>
            <aside class="col-lg-4 bg-light p-3 rounded">
                <h3 class="h5 text-primary mb-3">Tin xem nhiều</h3>
                <ul class="list-unstyled">
                    @foreach (\App\Models\News::orderBy('views', 'desc')->limit(3)->get() as $news)
                        <li class="mb-2"><a href="{{ route('news.detail', $news->id) }}" class="text-dark">{{ $news->title }}</a> ({{ $news->views }} lượt xem)</li>
                    @endforeach
                </ul>
            </aside>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <div class="container">
            <p>© 2025 Tin Tức Việt Nam. Mọi quyền được bảo lưu.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 