<?PHP
include_once('ConBas.php');
$consulta = laConsulta();
?>
<!Doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <form action="index.php" method="post">

<title>Préstamos  & Soluciones</title>
<Style>
table{
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
th{
  text-align: left;
  padding-top: 8px;
  background-color: #3a57af;
  color: white
}
td, th{
  border: 1px solid black;
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color: #dddddd;
}

</Style>
</head>

<body>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
  <link rel="stylesheet" href="css/Registro.css"
  <div class="testbox">
    <h1>Registration</h1>

    <form action="index.php" method="post">
        <hr>
      <div class="accounttype">
        <input type="radio" value="None" id="radioOne" name="account" checked/>
        <label for="radioOne" class="radio" chec>Personal</label>
        <input type="radio" value="None" id="radioTwo" name="account" />
        <label for="radioTwo" class="radio">Compania</label>
      </div>

    <hr>
    <label id="icon" for="name"><i class="icon-envelope "></i></label>
    <input type="Nombre Cliente" name="name" id="name" placeholder="Nombre Cliente" required/>
    <label id="icon" for="name"><i class="icon-user"></i></label>
    <input type="Numero Telefono" name="name" id="name" placeholder="Numero Telefono" required/>
    <label id="icon" for="name"><i class="icon-shield"></i></label>
    <input type="RNC/ # CEDULA" name="name" id="name" placeholder="RNC/ # CEDULA" required/>
    <label id="icon" for="name"><i class="icon-shield"></i></label>
    <input type="concepto/prestamo" name="name"id="name" placeholder="Concepto/Prestamo" required/>


    </form>
    </div>


  <p></p>
<table>
<tr>
  <th>No.</th>
  <th>Fecha</th>
  <th>Nombre de Clientes</th>
  <th>Concepto de Prestamo</th>
  <th>Monto Prestamo</th>
  <th>% de Interes</th>
  <th>Total a Pagar $</th>
  <th>Fecha de Pago</th>
  <th>Fecha de Vencimiento $</th>
  <th>Pago Redito/ Atraso</th>
</tr>

<?php
while ($mostrar - $consulta->mysqli_fetch_array()) {

?>

   <tr>
     <td><?php echo $mostrar['NO.'] ?><!-- 1--></td>
    <td><?php echo $mostrar['Fecha'] ?><!-- 23.09.2018--></td>
    <td><?php echo $mostrar['Nombre de Clientes'] ?><!-- Jose Feliciano--></td>
    <td><?php echo $mostrar['Concepto de Prestamo'] ?><!-- Trimentral--></td>
    <td><?php echo $mostrar['Monto Prestamo'] ?><!-- RD$ 10,000.00--></td>
    <td><?php echo $mostrar['% de Interes'] ?><!-- RD$ 3,500.00--></td>
    <td><?php echo $mostrar['Total a Pagar $'] ?><!-- RD$ 13,500.00--></td>
    <td><?php echo $mostrar['Fecha de Pago'] ?><!-- 23.09.2019--></td>
    <td><?php echo $mostrar['Fecha de Vencimiento $'] ?><!-- 24.09.2019--></td>
    <td><?php echo $mostrar['Pago Redito/ Atraso'] ?><!-- RD$ 1,000.00--></td>
  </tr>
  <tr>
   <td><?php echo $mostrar['NO.'] ?><!-- 2--></td>
    <td><?php echo $mostrar['Fecha'] ?><!-- 09.03.2019--></td>
    <td><?php echo $mostrar['Nombre de Clientes'] ?><!-- Fernando de la Cruz--></td>
    <td><?php echo $mostrar['Concepto de Prestamo'] ?><!-- Mentral--></td>
    <td><?php echo $mostrar['Monto Prestamo'] ?><!-- RD$ 20,000.00--></td>
    <td><?php echo $mostrar['% de Interes'] ?><!-- RD$ 2,000.00--></td>
    <td><?php echo $mostrar['Total a Pagar $'] ?><!-- RD$ 22,000.00--></td>
    <td><?php echo $mostrar['Fecha de Pago'] ?><!-- 09.03.2020--></td>
    <td><?php echo $mostrar['Fecha de Vencimiento $'] ?><!-- 10.03.2020--></td>
    <td><?php echo $mostrar['Pago Redito/ Atraso'] ?><!-- NO--></td>
  </tr>

<?php
}
?>

</table>


</body>
</html>
