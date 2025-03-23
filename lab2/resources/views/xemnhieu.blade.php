<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Document</title>
</head>

<body class="container card">
    <h1 class="text-center">Xem nhiều tin</h1>
    <div class="text-center">
        <a href="{{ route('news.getNewsCate', ['category' => 2]) }}" class="btn btn-secondary">Xem tin chính trị</a>
        <a href="{{ route('news.getNewsHot') }}" class="btn btn-danger">Xem tin mới</a>
        <a href="{{ route('home.index') }}" class="btn btn-secondary">Quay lại</a>
    </div>
    <div class="list-group">
        @foreach ($news as $new)
        <div class="list-group-item">
            <p>{{ $new->title }}</p>
            <em>Ngày đăng: {{ $new->created_at }}</em>
            <a href="{{ route('news.news', $new->id) }}" class="btn btn-primary">Xem chi tiết</a>
        </div>
        @endforeach
    </div>
</body>

</html>