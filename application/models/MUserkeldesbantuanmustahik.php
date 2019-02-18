<?php

class MUserkeldesbantuanmustahik extends CI_Model {
    
    public function get_mustahik($getnik, $getiduser){

        $query = $this->db->get_where('mustahik',array(
            'nik'       => $getnik,
            'iduser'    => $getiduser));
        return $query->result();    
       
    }
}