<?php

class Lapharian extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        chek_session();
        $this->load->model('Model_lapharian');
    }


    function index($year = NULL, $month = NULL)
    {
        $data['calender'] = $this->Model_lapharian->getcalender($year, $month);
        $data['cards'] = $this->cards();
        $this->template->load('template/template', 'laporan/lap_harian', $data);
    }

    public function cards()
    {
        $data['laris'] = $this->Model_lapharian->barang_laris();
        if ($data['laris'] == FALSE) {
            $laris = 'kosong';
        } else {
            $laris = $this->Model_lapharian->barang_laris()->nama_barang;
        }
        $card = [
            [
                'box'         => 'red',
                'total'     => 'Rp.' . number_format($this->Model_lapharian->income()->gtotal),
                'title'        => 'Total Harga Jual',
                'description'    => 'Total Pendapatan Kotor',
                'icon'        => 'cube'
            ],
            [
                'box'         => 'blue',
                'total'     => $this->Model_lapharian->total_penjualan()->total,
                'title'        => 'Barang Terjual',
                'description'    => 'Total Barang Terjual',
                'icon'        => 'shopping-cart'
            ],
            [
                'box'         => 'yellow',
                'total'     =>  $this->Model_lapharian->total_transaksi()->total,
                'title'        => 'Total Transaksi',
                'description'    => 'Total Transaksi',
                'icon'        => 'shopping-basket'
            ],
            [
                'box'         => 'purple',
                'total'     => $laris,
                'title'        => 'Barang Terlaris',
                'description'    => 'Barang Terlaris',
                'icon'        => 'cubes'
            ],            
            [
                'box'         => 'green',
                'total'     => 'Rp.' . number_format($this->Model_lapharian->laba()->gtotall),
                'title'        => 'Total Harga Modal',
                'description'    => 'Total Pendapatan',
                'icon'        => 'money'
            ],
        ];
        $info_card = json_decode(json_encode($card), FALSE);
        return $info_card;
    }
}
