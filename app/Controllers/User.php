<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $db      = \Config\Database::connect();
        $builder = $db->table('users');
    }
}
