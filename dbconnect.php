<?php

$url = parse_url(getenv("CLEARDB_DATABASE_URL"));
// var_dump($url);

$db_name = substr($url["path"], 1);
$db_host = $url["host"];
$user = $url["user"];
$password = $url["pass"];

// $dsn = "mysql:dbname=".$db_name.";host=".$db_host;
$dsn = "mysql:dbname=".$db_name.";host=".$db_host.";charset=utf8";

try {
    // $db = new PDO('mysql:dbname=dbname;host=hostname;charset=utf8', 'username', 'password');
    $db=new PDO($dsn,$user,$password,array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING));
} catch(PDOException $e) {
    print('DB接続エラー：' . $e->getMessage());
}
?>