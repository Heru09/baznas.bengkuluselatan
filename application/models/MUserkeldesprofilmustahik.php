<?php

class muserkeldesprofilmustahik extends CI_Model {
    
    public function get_profile($getnik, $getiduser){

        $query = $this->db->get_where('calonmustahik',array(
            'nik'       => $getnik,
            'iduser'    => $getiduser));
        return $query->result();   
       
    }
}