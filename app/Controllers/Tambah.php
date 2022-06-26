<?php
namespace App\Controllers;
use App\Models\FilmModel;

class Tambah extends BaseController
{
    protected $filmModels;
    public function __construct()
    {
        $this->filmModel = new filmModel();
    }
    public function index()
    {

        $film = $this->filmModel->findAll();
        $data = [
            'title' => 'List Film',
            'film' => $film
        ];
        return view('tambahfilm', $data);
    }
    public function vupdate($id=null)
    {

        $film = $this->filmModel->find($id);
            $data = [
                'title' => 'update',
                'film' => $film,
            ];
            return view('updatefilm', $data);
    }
    public function deskripsi($id=null)
    {

        $film = $this->filmModel->find($id);
            $data = [
                'title' => 'deskrpsi',
                'film' => $film,
            ];
            return view('deskripsi', $data);
    }
    public function insert()
    {
        $fileSampul = $this->request->getFile('cover');
        
        $fileSampul->move('assets/images');

        $namaCover = $fileSampul->getName();

       $data = [
        'judul' => $this->request->getPost('judul'),
        'rating'    => $this->request->getPost('rating'),
        'deskripsi'    => $this->request->getPost('deskripsi'),
        'trailer'    => $this->request->getPost('trailer'),
        'jadwal'    => $this->request->getPost('jadwal'),
        'status'    => $this->request->getPost('status'),
        'cover'    => $namaCover,
    ];
       
        $this->filmModel->insert($data);
        return redirect()->to(site_url('tambahfilm'))->with('success','Data Berhasil Disimpan');
    }

    public function delete($id=null)
    {
        $this->filmModel->where('id',$id )->delete();
        return redirect()->to(site_url('tambahfilm'))->with('success','Data Berhasil Disimpan');
    }
    public function update($id)
    {
        $validation = $this->validate([
            'coverbaru' => [
                'uploaded[coverbaru]',
                'mime_in[coverbaru,image/jpg,image/jpeg,image/png]'
            ]
        ]);
        if($validation == FALSE)
        {
            $data = [
                'judul' => $this->request->getPost('judul'),
                'rating'    => $this->request->getPost('rating'),
                'deskripsi'    => $this->request->getPost('deskripsi'),
                'trailer'    => $this->request->getPost('trailer'),
                'jadwal'    => $this->request->getPost('jadwal'),
                'status'    => $this->request->getPost('status'),
                'cover'    => $this->request->getPost('coverlama'),
            ];   
        }else{ 
            $filebaru = $this->request->getFile('coverbaru');
            $filebaru->move('assets/images');
            $namacover= $filebaru->getName();



       $data = [
        'judul' => $this->request->getPost('judul'),
        'rating'    => $this->request->getPost('rating'),
        'deskripsi'    => $this->request->getPost('deskripsi'),
        'trailer'    => $this->request->getPost('trailer'),
        'jadwal'    => $this->request->getPost('jadwal'),
        'status'    => $this->request->getPost('status'),
        'cover'    => $namacover,
        
    ];
    
}
    $this->filmModel->update($id, $data);
    return redirect()->to(site_url('tambahfilm'))->with('success','Data Berhasil Disimpan');
       
}
}