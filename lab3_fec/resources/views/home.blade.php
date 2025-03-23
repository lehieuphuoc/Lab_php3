@extends('layout')
@section('title', 'Trang chủ')
@section('noidung')
<h1>Đây là trang chủ</h1>
<hr>
@foreach ($news as $new)
<div class="list-group-item">
    <p>{{ $new->title }}</p>
    <em>Ngày đăng: {{ $new->created_at }}</em>
    <a href="{{ route('news.show', $new->id) }}" class="btn btn-primary">Xem chi tiết</a>
</div>
@endforeach
@endsection