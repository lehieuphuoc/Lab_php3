<!DOCTYPE html>
<html>
<head>
    <title>Kích hoạt tài khoản</title>
</head>
<body>
    <h1>Xin chào {{ $user->name }},</h1>
    <p>Cảm ơn bạn đã đăng ký tại Tin Tức Việt Nam. Vui lòng nhấp vào nút bên dưới để kích hoạt tài khoản:</p>
    <a href="{{ url('/activate/' . $token) }}" style="background-color: #007bff; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;">Kích hoạt tài khoản</a>
    <p>Nếu bạn không đăng ký, vui lòng bỏ qua email này.</p>
    <p>Trân trọng,<br>Tin Tức Việt Nam</p>
</body>
</html>