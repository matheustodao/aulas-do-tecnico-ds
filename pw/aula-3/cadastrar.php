<?php
    include 'banco.php';

    $model = $_POST['model'];
    $brand = $_POST['brand'];
    $color = $_POST['color'];
    $gasType = $_POST['gasType'];
    $factoryYear = $_POST['factoryYear'];
    $price = $_POST['price'];
    $licensePlate = $_POST['licensePlate'];
    $chassis = $_POST['chassis'];


    $sql = "INSERT INTO car(model, brand, color, gas_type, factory_year, price, license_plate, chassis) VALUES(:model, :brand, :color, :gasType, :factoryYear, :price, :licensePlate, :chassis);";
    $pdo = Banco::conectar();
    $sql = $pdo->prepare($sql);
    $sql->bindValue(':model', $model);
    $sql->bindValue('brand', $brand);
    $sql->bindValue('color', $color);
    $sql->bindValue('gasType', $gasType);
    $sql->bindValue('factoryYear', $factoryYear);
    $sql->bindValue('price', $price);
    $sql->bindValue('licensePlate', $licensePlate);
    $sql->bindValue('chassis', $chassis);
    $sql->execute();
?>