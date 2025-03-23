<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
   
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>{{$new->title}}</h1>
            </div>
            <div class="card-body">
                <p>{{$new->content}}</p>
                <em>Ngày đăng: {{ $new->created_at }}</em>
            </div>
            <div class="card-footer">
                <a href="{{ route('news.getNews') }}" class="btn btn-secondary">Quay lại</a>
            </div>
        </div>
    </div>
    
</body>
</html>