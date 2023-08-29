<?php 
    $conn = mysqli_connect("localhost", "root", "", "xitkj2_pdl");

    if(!$conn){
        die(mysqli_connect_error());
    }

    function get_values(){
        global $conn;
        $query = "";
        if(isset($_GET["order-by"]) && $_GET["order-by"] == "nama"){
            $query = "SELECT * FROM tb_siswa ORDER BY nama";
        }else{
            $query = "SELECT * FROM tb_siswa";
        }
        $result = mysqli_query($conn, $query);
        $rows = [];
        while($row = mysqli_fetch_assoc($result)){
            $rows[] = $row;
        }
        return $rows;
    }
?>