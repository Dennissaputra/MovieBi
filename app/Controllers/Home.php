<?php

namespace App\Controllers;
use App\Models\FilmModel;

class Home extends BaseController
{
    protected $filmModels;
    public function __construct()
    {
        $this->filmModel = new filmModel();
    }
    public function index()
    {
        $filmall = $this->filmModel->findAll();
        $film = new filmModel();
        
        $data = [
            'title' => 'dashbord film',
            'filmcoming' => $film->ComingSoon(),
            'filmteater' => $film->InTeater(),
            'filmall' => $filmall
        ];
        return view('body', $data);
    }

}
