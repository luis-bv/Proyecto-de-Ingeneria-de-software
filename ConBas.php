
<?php
require_once('parametros.php');
$conexion = new mysqli(DB_Host,DB_USER,DB_PASSWORD,DB_DATABASE);
$consulta = '';

if ( $conexion->connect_error)
{
  echo 'ERRor en la conexión';
  exit;
}

function laConsulta()
{
  global $conexion, $consulta;
  $sql = 'SELECT * FROM registration';
  return $conexion->query($sql);
}
?>
