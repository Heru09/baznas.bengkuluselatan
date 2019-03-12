<?php

class MUserkeldesgetgurumengaji extends CI_Model {
var $table = 'gurumengaji'; 
	var $select  = array('email','iduser','nama','namapanggilan','nik','jk','tempatlahir','tanggallahir','agama','hp','alamatlengkap','skpengangkatan','skpemberhentian','tempatkegiatan','linkabsen'); 
	var $column_order = array('email','iduser','nama','namapanggilan','nik','jk','tempatlahir','tanggallahir','agama','hp','alamatlengkap','skpengangkatan','skpemberhentian','tempatkegiatan','linkabsen'); 
	var $column_search = array('email','iduser','nama','namapanggilan','nik','jk','tempatlahir','tanggallahir','agama','hp','alamatlengkap','skpengangkatan','skpemberhentian','tempatkegiatan','linkabsen');
	
	var $order = array('nama' => 'asc'); 

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function get_datatables($iduser)
    {
        $this->_get_datatables_query($iduser);
       
        if($this->input->post['length'] != -1)
            $this->db->limit($this->input->post['length'], $this->input->post['start']);
        $query = $this->db->get();
        
        return $query->result();
    }

    public function count_filtered($iduser)
    {
        $this->_get_datatables_query($iduser);
       
        $query = $this->db->get();
       
        return $query->num_rows();
    }

     public function count_all()
    {
        $this->db->from($this->table);
        
        return $this->db->count_all_results();
    }

    private function _get_datatables_query($iduser)
    {

        $this->db
             ->select($this->select)
             ->from($this->table);

        if($iduser!='') 
        {

            $this->db->where('iduser', $iduser);
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
