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
            <input type="search" placeholder="Buscar por nome ou categoria do campeão..." name="busca" />
        </div>
        <button type="submit">Procurar</button>
    </form>

</body>
</html>

<?php
    include 'banco.php';
    $sql = "SELECT * FROM hero;";
    if (isset($_POST['busca'])) {
        $searchTerm = $_POST['busca'];
        $searchByRole = "OR role LIKE '%" . $searchTerm . "%'";
        $searchByStory = "OR story LIKE '%" . $searchTerm . "%'";
        $sql = "SELECT * FROM hero WHERE name LIKE '%" . $searchTerm . "%'" . $searchByRole . $searchByStory;
    }
    $pdo = Banco::conectar();
    $sql = $pdo->prepare($sql);
    $sql->execute();

    $heroList = $sql->fetchAll();
    echo '<table>';
        echo '<tr>';
            echo '<th>Nome</th>';
            echo '<th>Categoria</th>';
            echo '<th>Foto</th>';
        echo '</tr>';
    for ($index = 0; $index < COUNT($heroList); $index++) {
        echo '<tr>';
            echo '<td>' . $heroList[$index]['name'] . '</td>';
            echo '<td>' . $heroList[$index]['role'] . '</td>';
            echo '<td>' . $heroList[$index]['story'] . '</td>';
            echo '<td> <img src="' . $heroList[$index]['image'] . '" alt="foto de perfil" width="250px" height="250px" /> </td>';
        echo '</tr>';
    }
    echo '</table>';
?>