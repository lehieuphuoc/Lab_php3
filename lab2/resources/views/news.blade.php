<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Document</title>
</head>
<body class="container card">
    <div class="d-flex gap-2">
        <a href="{{ route('news.getNews') }}" class="btn btn-secondary">Xem nhiều tin</a>
        <a href="{{ route('news.getNewsHot') }}" class="btn btn-primary">Xem tin mới</a>
        <a href="{{ route('news.getNewsCate', ['category' => 2]) }}" class="btn btn-secondary">Xem tin chính trị</a>
    </div>
</body>
</html>
