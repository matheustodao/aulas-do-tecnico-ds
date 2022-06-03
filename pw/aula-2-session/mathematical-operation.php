<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mathematical Operation Result</title>
</head>
<body>
    <header>
        <a href="./index.php">Voltar</a>    
    </header>
    <h1>Mathematical Operation</h1>
    
    <!-- <div class="result">
        <strong>{Soma}</strong>

        <p class="operation">{first-number} + {second-number}</p>

        <p class="total">{total}</p>
    </div> -->
</body>
</html>

<?php
function layoutToShowResult($numberOne, $numberTwo, $total, $symbol, $title) {
    echo "
    <div class='result'>
        <strong>$title</strong>

        <p class='operation'>$numberOne $symbol $numberOne</p>

        <p class='total'>$total</p>
    </div>";
}

if (isset($_POST['value=sent'])) {
        session_start();

        $_SESSION['first-number'] = $_POST['first-number'];
        $_SESSION['second-number'] = $_POST['second-number'];

        $addition = $_SESSION['first-number'] + $_SESSION['second-number'];
        $subtraction = $_SESSION['first-number'] - $_SESSION['second-number'];
        $reverseSubtraction = $_SESSION['second-number'] - $_SESSION['first-number'];
        $multiplication = $_SESSION['first-number'] * $_SESSION['second-number'];
        $division = $_SESSION['first-number'] / $_SESSION['second-number'];
        $reverseDivision = $_SESSION['second-number'] / $_SESSION['first-number'];
        // echo $_SESSION['first-number'] + $_SESSION['second-number'];

        // layoutToShowResult($_SESSION['first-number'], $_SESSION['second-number'], $addition, '+', 'Soma');
        // layoutToShowResult($_SESSION['first-number'], $_SESSION['second-number'], $subtraction, '-', 'Substração');
        // layoutToShowResult($_SESSION['second-number'], $_SESSION['first-number'], $reverseSubtraction, '-', '2º Substração');
        // layoutToShowResult($_SESSION['first-number'], $_SESSION['second-number'], $multiplication, 'X', 'Multiplição');
        // layoutToShowResult($_SESSION['first-number'], $_SESSION['second-number'], $division, '/', 'Divisão');
        // layoutToShowResult($_SESSION['second-number'], $_SESSION['first-number'], $reverseDivision, '/', '2º Divisão');
    };
?>