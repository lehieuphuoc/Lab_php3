<?php
namespace App\Http\Controllers;

use App\Mail\ActivationEmail;
use App\Mail\ResetPasswordEmail;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AuthController extends Controller
{
    // Hiển thị form đăng ký
    public function showRegisterForm()
    {
        return view('auth.register');
    }

    // Xử lý đăng ký
    public function postRegister(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6|confirmed',
        ]);

        $token = Str::random(60);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'email_verified_at' => null,
            'remember_token' => $token,
        ]);

        // Gửi email kích hoạt tài khoản
        Mail::to($user->email)->send(new ActivationEmail($user, $token));

        return redirect()->route('auth.login')->with('success', 'Vui lòng kiểm tra email để kích hoạt tài khoản.');
    }

    // Kích hoạt tài khoản
    public function activateAccount($token)
    {
        $user = User::where('remember_token', $token)->first();

        if (!$user) {
            return redirect()->route('auth.login')->with('error', 'Token không hợp lệ.');
        }

        $user->update(['email_verified_at' => Carbon::now(), 'remember_token' => null]);

        return redirect()->route('auth.login')->with('success', 'Tài khoản của bạn đã được kích hoạt.');
    }

    // Hiển thị form đăng nhập
    public function showLoginForm()
    {
        return view('auth.login');
    }

    // Xử lý đăng nhập
    public function postLogin(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        if (Auth::attempt($credentials, $request->has('remember'))) {
            return redirect()->route('home.index')->with('success', 'Đăng nhập thành công.');
        }

        return back()->with('error', 'Thông tin đăng nhập không chính xác.');
    }

    // Đăng xuất
    public function logout()
    {
        Auth::logout();
        return redirect()->route('auth.login')->with('success', 'Bạn đã đăng xuất.');
    }

    // Hiển thị form quên mật khẩu
    public function showForgotPasswordForm()
    {
        return view('auth.forgot_password');
    }

    // Gửi email quên mật khẩu
    public function sendResetPasswordEmail(Request $request)
    {
        $request->validate(['email' => 'required|email|exists:users,email']);

        $token = Str::random(60);
        $user = User::where('email', $request->email)->first();
        $user->update(['remember_token' => $token]);

        Mail::to($user->email)->send(new ResetPasswordEmail($token));

        return back()->with('success', 'Vui lòng kiểm tra email để đặt lại mật khẩu.');
    }

    // Hiển thị form đặt lại mật khẩu
    public function showResetPasswordForm($token)
    {
        return view('auth.reset_password', compact('token'));
    }

    // Xử lý đặt lại mật khẩu
    public function resetPassword(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'password' => 'required|min:6|confirmed',
        ]);

        $user = User::where('remember_token', $request->token)->first();

        if (!$user) {
            return redirect()->route('auth.forgot_password')->with('error', 'Token không hợp lệ.');
        }

        $user->update([
            'password' => Hash::make($request->password),
            'remember_token' => null,
        ]);

        return redirect()->route('auth.login')->with('success', 'Mật khẩu đã được đặt lại.');
    }
}

?>