@extends('layout')
@section('title', 'Thông tin chi tiết news ')
@section('noidung')
<div class="card">
    <div class="card-header">
<h1 style="color: rgb(0, 145, 255)">Thông tin chi tiết news {{$new->id}}</h1>
        
    </div>
    <hr>
    <div class="card-body">
        <p style="color: black">{{$new->content}}</p>
        <em>Ngày đăng: {{ $new->created_at }}</em>
    </div>
    <div class="card-footer">
        <a href="{{ route('news.index') }}" class="btn btn-secondary">Quay lại</a>
    </div>
</div>
@endsection