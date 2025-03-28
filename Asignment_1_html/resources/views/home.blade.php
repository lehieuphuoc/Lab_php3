@extends('layouts.app')
@section('title', 'Trang chủ')
@section('content')
    @if (isset($query))
        <h1 class="h4 text-primary mb-3">Kết quả tìm kiếm: "{{ $query }}"</h1>
        @if ($news->isEmpty())
            <p class="text-muted">Không tìm thấy kết quả nào.</p>
        @else
            @foreach ($news as $item)
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="{{ $item->image }}" class="img-fluid rounded-start" alt="Tin tức">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h2 class="card-title h5"><a href="{{ route('news.detail', $item->id) }}" class="text-dark text-decoration-none">{{ $item->title }}</a></h2>
                                <p class="card-text text-muted">{{ $item->description }}</p>
                                <small class="text-muted">{{ $item->created_at->diffForHumans() }} | {{ $item->views }} lượt xem</small>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif
    @else
        <!-- Tin nổi bật -->
        <section class="mb-4">
            <h1 class="h4 text-primary mb-3">Tin nổi bật</h1>
            <div class="row">
                @foreach ($featuredNews as $index => $news)
                    @if ($index == 0)
                        <div class="col-md-6">
                            <div class="card mb-3">
                                <img src="{{ $news->image }}" class="card-img-top" alt="Tin nổi bật">
                                <div class="card-body">
                                    <h2 class="card-title h5"><a href="{{ route('news.detail', $news->id) }}" class="text-dark text-decoration-none">{{ $news->title }}</a></h2>
                                    <p class="card-text text-muted">{{ $news->description }}</p>
                                    <small class="text-muted">{{ $news->created_at->diffForHumans() }} | {{ $news->views }} lượt xem</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <ul class="list-unstyled">
                    @else
                                <li class="mb-3">
                                    <h2 class="h6"><a href="{{ route('news.detail', $news->id) }}" class="text-dark text-decoration-none">{{ $news->title }}</a></h2>
                                    <small class="text-muted">{{ $news->created_at->diffForHumans() }} | {{ $news->views }} lượt xem</small>
                                </li>
                    @endif
                    @if ($index == 2)
                            </ul>
                        </div>
                    @endif
                @endforeach
            </div>
        </section>

        <!-- Tin mới nhất -->
        <section>
            <h1 class="h4 text-primary mb-3">Tin mới nhất</h1>
            <div class="row">
                @foreach ($latestNews as $news)
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <img src="{{ $news->image }}" class="card-img-top" alt="Tin mới">
                            <div class="card-body">
                                <h2 class="card-title h6"><a href="{{ route('news.detail', $news->id) }}" class="text-dark text-decoration-none">{{ $news->title }}</a></h2>
                                <small class="text-muted">{{ $news->created_at->diffForHumans() }} | {{ $news->views }} lượt xem</small>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </section>
    @endif
@endsection