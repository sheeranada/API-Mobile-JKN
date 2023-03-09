<?php
function cekpasien_baru($nik,$nopeserta)
{
        $data=array();
        $str="select 
        a.nomorkartu,
        a.nik,
        a.nomorkk,
        a.nama,
        a.norm,
        a.jeniskelamin,
        a.tanggallahir,
        a.nohp,
        a.alamat,
        a.kodeprop,
        a.namaprop,
        a.kodedati2,
        a.namadati2,
        a.kodekec,
        a.namakec,
        a.kodekel,
        a.namakel,
        a.rt,
        a.rw 
        FROM 
        referensi_mobilejkn_pasienbaru AS a 
        where a.nik='".$nik."' and a.nomorkartu='".$nopeserta."'";
    $data= fetch_array(bukaquery2($str));
    return $data;
}

function InsertTmpPasienbaru($ar_in)
{
    $str="insert into referensi_mobilejkn_pasienbaru (
        nomorkartu,
        nik,
        nomorkk,
        nama,
        jeniskelamin,
        tanggallahir,
        nohp,
        alamat,
        kodeprop,
        namaprop,
        kodedati2,
        namadati2,
        kodekec,
        namakec,
        kodekel,
        namakel,
        rt,
        rw        
        ) 
        values(
        '".$ar_in['nomorkartu']."',
        '".$ar_in['nik']."',
        '".$ar_in['nomorkk']."',
        '".$ar_in['nama']."',
        '".$ar_in['jeniskelamin']."',
        '".$ar_in['tanggallahir']."',
        '".$ar_in['nohp']."',
        '".$ar_in['alamat']."',
        '".$ar_in['kodeprop']."',
        '".$ar_in['namaprop']."',
        '".$ar_in['kodedati2']."',
        '".$ar_in['namadati2']."',
        '".$ar_in['kodekec']."',
        '".$ar_in['namakec']."',
        '".$ar_in['kodekel']."',
        '".$ar_in['namakel']."',
        '".$ar_in['rt']."',
        '".$ar_in['rw']."'            
        )";
    $data = bukaquery2($str);
    return $data;    
}

?>
