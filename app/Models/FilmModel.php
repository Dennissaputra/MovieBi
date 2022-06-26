<?php

    namespace App\Models;
    use CodeIgniter\Model;

    class FilmModel extends Model
    {
        protected $table = 'tb_film';
        protected $primarykey='id';
        protected $returnType='array';
        protected $allowedFields = ['cover','judul','rating','deskripsi','trailer','jadwal','status'];
        
        public function __construck()
        {
            $this->db = db_connect();
        }

        public function ComingSoon()
        {        
            $sql = "SELECT * FROM tb_film WHERE Status='Coming Soon'";
            return $this->db->query($sql)->getResultArray();
        } 
    
        public function InTeater()
        {        
            $sql = "SELECT * FROM tb_film WHERE Status='Inteater'";
            return $this->db->query($sql)->getResultArray();
        } 

    }

?>