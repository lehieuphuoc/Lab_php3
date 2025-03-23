<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            max-width: 1200px;
            margin: 0 auto;
        }
        header, footer {
            background: #ff5733;
            color: white;
            text-align: center;
            padding: 15px;
        }
        nav {
            background: #33c3ff;
            color: white;
            text-align: center;
            padding: 10px;
        }
        .container {
            display: flex;
            flex: 1;
            gap: 10px;
            padding: 10px 0;
        }
        article {
            flex: 2;
            background: #da6a6a;
            color: white;
            padding: 15px;
        }
        aside {
            flex: 1;
            background: #508980;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>
    <header>Header</header>
    <nav> @include('menu') </nav>
    <div class="container">
        <article>@yield('noidung')</article>
        <aside>Thông tin bổ sung</aside>
    </div>
    <footer>Footer</footer>
</body>
</html>
