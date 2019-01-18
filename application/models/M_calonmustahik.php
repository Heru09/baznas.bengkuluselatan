<?php

class M_calonmustahik extends CI_Model {

	var $table = 'calonmustahik'; 
	var $select  = array('nama','nik','jk','tempatlahir','tanggallahir','alamatlengkap','kec','keldes','idkeldes','terdaftar'); 
	var $column_order = array('nama','nik','jk','tempatlahir','tanggallahir','alamatlengkap','kec','keldes','idkeldes','terdaftar'); 
	var $column_search = array('nama','nik','jk','tempatlahir','tanggallahir','alamatlengkap','kec','keldes','idkeldes','terdaftar');
	
	var $order = array('nama' => 'asc'); 

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function get_datatables($idkeldes, $keldes)
    {
        $this->_get_datatables_query($idkeldes, $keldes);
       
        if($this->input->post['length'] != -1)
            $this->db->limit($this->input->post['length'], $this->input->post['start']);
        $query = $this->db->get();
        
        return $query->result();
    }

    public function count_filtered($idkeldes, $keldes)
    {
        $this->_get_datatables_query($idkeldes, $keldes);
       
        $query = $this->db->get();
       
        return $query->num_rows();
    }

     public function count_all()
    {
        $this->db->from($this->table);
        
        return $this->db->count_all_results();
    }

    private function _get_datatables_query($idkeldes, $keldes)
    {

        $this->db
             ->select($this->select)
             ->from($this->table);

        if($idkeldes!='' && $keldes!='') 
        {

            $this->db->where('idkeldes', $idkeldes);
        }

        $i = 0;
        foreach ($this->column_search as $item) 
        {
            if($this->input->post['search']['value']) 
            {

                if($i===0) 
                {
                    $this->db->group_start(); 
                    $this->db->like($item, $_POST['search']['value']);
                }
                else
                {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if(count($this->column_search) - 1 == $i) 
                    $this->db->group_end(); 
            }
            $i++;
        }

        if(isset($_POST['order'])) 
        {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);

        }
        elseif (isset($this->order)) 
        {
            $order = $this->order;

            $this->db->order_by(key($order), $order[key($order)]);

        }
    }
}
