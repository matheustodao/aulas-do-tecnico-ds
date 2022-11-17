<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Heros</title>

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

        td img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            aspect-ratio: 1;
        }

        td .story {
            max-width: 250px;
        }

        #form {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 32px auto;
            gap: 8px;
        }


        #form button, #form input {
            border: none;
            border-radius: 5px;
        }

        #form input {
            padding: 8px;
            border: 1px solid #64DDBB;
        }

        #form button {
            padding: 8px 32px;
            background: #64DDBB;
            color: #FFF;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form method="POST" id="form">
        <div>
<<<<<<< HEAD
            <input type="search" placeholder="Buscar por nome, email, sexo, status, descrição ou profissão..." name="busca" />
        </div>
        <button type="submit">Procurar</button>
    </form>

=======
            <input type="search" placeholder="Buscar por nome ou categoria do campeão..." name="busca" />
        </div>
        <button type="submit">Procurar</button>
    </form>

>>>>>>> a34c83c3aca7f6df6a35772135efa6ffa18d627a
</body>
</html>

<?php
    include 'banco.php';
<<<<<<< HEAD
    $sql = "SELECT * FROM employee;";
    if (isset($_POST['busca'])) {
        $searchTerm = $_POST['busca'];
        $searchByEmail = "OR email LIKE '%" . $searchTerm . "%'";
        $searchByGender = "OR gender LIKE '%" . $searchTerm . "%'";
        $searchByJob = "OR job LIKE '%" . $searchTerm . "%'";
        $searchByDescription = "OR description_of_office LIKE '%" . $searchTerm . "%'";
        $searchByStatus = "OR status LIKE '%" . $searchTerm . "%';";
        $sql = "SELECT * FROM employee WHERE name LIKE '%" . $searchTerm . "%'" . $searchByEmail . $searchByGender . $searchByJob . $searchByDescription . $searchByStatus;
=======
    $sql = "SELECT * FROM hero;";
    if (isset($_POST['busca'])) {
        $searchTerm = $_POST['busca'];
        $searchByRole = "OR role LIKE '%" . $searchTerm . "%'";
        $searchByStory = "OR story LIKE '%" . $searchTerm . "%'";
        $sql = "SELECT * FROM hero WHERE name LIKE '%" . $searchTerm . "%'" . $searchByRole . $searchByStory;
>>>>>>> a34c83c3aca7f6df6a35772135efa6ffa18d627a
    }
    $pdo = Banco::conectar();
    $sql = $pdo->prepare($sql);
    $sql->execute();

<<<<<<< HEAD
    $employeeList = $sql->fetchAll();
    echo '<table>';
        echo '<tr>';
            echo '<th>Nome</th>';
            echo '<th>Sobrenome</th>';
            echo '<th>email</th>';
            echo '<th>Celular</th>';
            echo '<th>Gênero</th>';
            echo '<th>Cargo</th>';
            echo '<th>cpf</th>';
            echo '<th>Salario</th>';
            echo '<th>Shift</th>';
            echo '<th>Descrição de cargo</th>';
            echo '<th>Status</th>';
            echo '<th>Foto</th>';
        echo '</tr>';
    for ($index = 0; $index < COUNT($employeeList); $index++) {
        echo '<tr>';
            echo '<td>' . $employeeList[$index]['name'] . '</td>';
            echo '<td>' . $employeeList[$index]['last_name'] . '</td>';
            echo '<td>' . $employeeList[$index]['email'] . '</td>';
            echo '<td>' . $employeeList[$index]['phone'] . '</td>';
            echo '<td>' . $employeeList[$index]['gender'] . '</td>';
            echo '<td>' . $employeeList[$index]['job'] . '</td>';
            echo '<td>' . $employeeList[$index]['cpf'] . '</td>';
            echo '<td>' . $employeeList[$index]['salary'] . '</td>';
            echo '<td>' . $employeeList[$index]['shift'] . '</td>';
            echo '<td>' . $employeeList[$index]['description_of_office'] . '</td>';
            echo '<td>' . $employeeList[$index]['status'] . '</td>';
            echo '<td> <img src="' . $employeeList[$index]['status'] . '" alt="foto de perfil" width="250px" height="250px" /> </td>';
=======
    $heroList = $sql->fetchAll();
    echo '<table>';
        echo '<tr>';
            echo '<th>Nome</th>';
            echo '<th>Categoria</th>';
            echo '<th>Historia</th>';
            echo '<th>Foto</th>';
        echo '</tr>';
    for ($index = 0; $index < COUNT($heroList); $index++) {
        echo '<tr>';
            echo '<td>' . $heroList[$index]['name'] . '</td>';
            echo '<td>' . $heroList[$index]['role'] . '</td>';
            echo '<td className="story">' . $heroList[$index]['story'] . '</td>';
            echo '<td> <img src="' . $heroList[$index]['image'] . '" alt="foto de perfil" width="250px" height="250px" /> </td>';
>>>>>>> a34c83c3aca7f6df6a35772135efa6ffa18d627a
        echo '</tr>';
    }
    echo '</table>';
?>