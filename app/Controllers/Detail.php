<?php

namespace App\Controllers;
use App\Models\FilmModel;

class Detail extends BaseController
{
    protected $filmModels;
    public function __construct()
    {
        $this->filmModel = new filmModel();
    }
    public function index($id)
    {
        $film = $this->filmModel->find($id);
        $data = [
            'title' => 'List Film',
            'film' => $film
        ];
        return view('moviesingle', $data);
    }
}
