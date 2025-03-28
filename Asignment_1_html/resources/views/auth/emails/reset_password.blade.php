<!DOCTYPE html>
<html>
<head>
    <title>Đặt lại mật khẩu</title>
</head>
<body>
    <h1>Xin chào,</h1>
    <p>Bạn đã yêu cầu đặt lại mật khẩu. Vui lòng nhấp vào nút bên dưới để tiếp tục:</p>
    <a href="{{ url('/reset-password/' . $token) }}" style="background-color: #007bff; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;">Đặt lại mật khẩu</a>
    <p>Nếu bạn không yêu cầu, vui lòng bỏ qua email này.</p>
    <p>Trân trọng,<br>Tin Tức Việt Nam</p>
</body>
</html>