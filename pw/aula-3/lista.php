<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de carros</title>

    <style>
        table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
        }

        td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        }

        tr:nth-child(even) {
        background-color: #dddddd;
        }
    </style>
</head>
<body>
    
</body>
</html>

<?php
    include 'banco.php';

    $sql = "SELECT * FROM car;";
    $pdo = Banco::conectar();
    $sql = $pdo->prepare($sql);
    $sql->execute();

    $carsList = $sql->fetchAll();
    echo '<table>';
        echo '<tr>';
            echo '<th>Modelo</th>';
            echo '<th>Marca</th>';
            echo '<th>Cor</th>';
            echo '<th>Combustivel</th>';
            echo '<th>Ano de Fabricão</th>';
            echo '<th>Preço</th>';
            echo '<th>Placa</th>';
            echo '<th>Chassis</th>';
        echo '</tr>';
    for ($index = 0; $index < COUNT($carsList); $index++) {
        echo '<tr>';
            echo '<td>' . $carsList[$index]['model'] . '</td>';
            echo '<td>' . $carsList[$index]['brand'] . '</td>';
            echo '<td>' . $carsList[$index]['color'] . '</td>';
            echo '<td>' . $carsList[$index]['gas_type'] . '</td>';
            echo '<td>' . $carsList[$index]['factory_year'] . '</td>';
            echo '<td>' . $carsList[$index]['price'] . '</td>';
            echo '<td>' . $carsList[$index]['license_plate'] . '</td>';
            echo '<td>' . $carsList[$index]['chassis'] . '</td>';
        echo '</tr>';
    }
    echo '</table>';
?>