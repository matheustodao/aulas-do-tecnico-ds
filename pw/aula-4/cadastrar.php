<?php
    include 'banco.php';

    $name = $_POST['name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $gender = $_POST['gender'];
    $job = $_POST['job'];
    $cpf = $_POST['cpf'];
    $salary = $_POST['salary'];
    $shift = $_POST['shift'];
    $description_of_office = $_POST['description_of_office'];
    $status = $_POST['status'];


    $sql = "INSERT INTO employee(name, last_name, email, phone, gender, shift, job, cpf, salary, description_of_office, status) VALUES(:name, :last_name, :email, :phone, :gender, :shift, :job, :cpf, :salary, :office, :description_of_office, :status);";
    $pdo = Banco::conectar();
    $sql = $pdo->prepare($sql);
    $sql->bindValue(':name', $name);
    $sql->bindValue(':last_name', $last_name);
    $sql->bindValue(':email', $email);
    $sql->bindValue(':phone', $phone);
    $sql->bindValue(':gender', $gender);
    $sql->bindValue(':job', $job);
    $sql->bindValue(':cpf', $cpf);
    $sql->bindValue(':salary', $salary);
    $sql->bindValue(':shift', $shift);
    $sql->bindValue(':description_of_office', $description_of_office);
    $sql->bindValue(':status', $status);
    $sql->execute();

    header('location: ./lista.php');
?>
