<?php
    include 'banco.php';

    $name = $_POST['name'];
    $lastName = $_POST['last_name'];

    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $gender = $_POST['gender'];
    $job = $_POST['job'];
    $cpf = $_POST['cpf'];
    $salary = $_POST['salary'];
    $shift = $_POST['shift'];
    $description_of_office = $_POST['description_of_office'];
    $status = $_POST['status'];
    $data = [
        "name" => $name,
        "last_name" => $lastName,
        "email" => $email,
        "phone" => $phone,
        "gender" => $gender,
        "job" => $job,
        "cpf" => $cpf,
        "salary" => $salary,
        "shift" => $shift,
        "description_of_office" => $description_of_office,
        "status" => $status,
    ];

    $sql = "INSERT INTO employee(name, last_name, email, phone, gender, shift,
        job, cpf, salary, description_of_office, status)
        VALUES(:name, :last_name, :email, :phone, :gender, :shift, :job, :cpf,
        :salary, :office, :description_of_office, :status);";
    $pdo = Banco::conectar();
    $sql = $pdo->prepare($sql)->execute($data);

    header('location: ./lista.php');
?>
