<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin Sinh viên</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .student-card {
            background: url('https://caodang.fpt.edu.vn/wp-content/uploads/th-1.jpg') no-repeat center center/cover;

            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            width: 450px;
            text-align: center;
            backdrop-filter: blur(5px);
        }

        .student-card h2 {
            color: #84ff00;
            font-size: 24px;
            margin-bottom: 15px;
        }

        .student-card p {
            font-size: 18px;
            margin: 8px 0;
            color: #16bece;
        }

        .highlight {
            font-weight: bold;
            color: #3807cb;
        }

        .student-card:hover {
            transform: scale(1.05);
            transition: 0.3s ease-in-out;
        }
    </style>
</head>
<body>
    <div class="student-card">
        <h2>Thông Tin Sinh Viên</h2>
        <p><span class="highlight">Trường:</span> {{ $student['school'] }}</p>
        <p><span class="highlight">Họ và tên:</span> {{ $student['name'] }}</p>
        <p><span class="highlight">Email:</span> {{ $student['email'] }}</p>
        <p><span class="highlight">Lớp:</span> {{ $student['class'] }}</p>
    </div>
</body>
</html>
