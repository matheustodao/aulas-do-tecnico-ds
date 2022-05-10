<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>lendo xml</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>
    <h1>Lista da Aula</h1>
    <?php
        $link = "index.xml";
        $xml = simplexml_load_file($link) -> materia;
        foreach($xml -> aula as $aula) {
            echo "<strong>Titulo</strong>" . utf8_decode($aula -> titulo) . "<br />";
            echo "<strong>Telefone</strong>" . utf8_decode($aula -> texto) . "<br />";
        }
    ?>
</body>
</html>