<?php

namespace App\Controllers;

class Auth extends BaseController
{
    public function login()
    {
        return view('auth/login');
    }
    public function logout()
    {
        return view('logout');
    }
}
