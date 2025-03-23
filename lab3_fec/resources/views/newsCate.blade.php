@extends('layout')
@section('title', 'Các tin trong loại {{ $idCate }}')
@section('noidung')
<h1>Các tin trong loại 12</h1>
<hr>
@foreach ($newsCate as $new)
<div class="list-group-item">
    <p>{{ $new->title }}</p>
    <em>Ngày đăng: {{ $new->created_at }}</em>
    <a href="{{ route('news.show', $new->id) }}" class="btn btn-primary">Xem chi tiết</a>
</div>
@endforeach
@endsection