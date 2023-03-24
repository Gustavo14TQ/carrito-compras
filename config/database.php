<?php

class Database{
    private $hostname = "localhost";
    private $database = "id20502285_carrito";
    private $username = "id20502285_localhost";
    private $password = "3C#H7<w(lpG!xe!a";
    private $charset = "utf8";
    
    function conectar(){
        try{
        $conexion = "mysql:host=" . $this->hostname . "; dbname=" .$this->database . ";
        charset=" . $this->charset;
        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_EMULATE_PREPARES => false
        ];
        
        $pdo = new PDO($conexion, $this->username ,$this->password,$options);

        return $pdo;
    }catch(PDOException $e){
        echo 'Error conexion ' . $e->getMessage();
        exit;
    }
        
    }
}
?>