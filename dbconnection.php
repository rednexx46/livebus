<?php
define('DB_SERVER','localhost');
define('DB_USER','livebusp_geral');
define('DB_PASS' ,'E?F2nuzlJ9-X');
define('DB_NAME', 'livebusp_portugal');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
$con -> set_charset("utf8");
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>