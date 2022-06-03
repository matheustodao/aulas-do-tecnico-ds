<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sessão PHP</title>
</head>
<body>
    <form method="POST" name="forms" action="./mathematical-operation.php?value=sent">
        <div class="wrapper__input">
            <label for="first-number">Digite um número</label>
            <input type="number" name="first-number" id="first-number">
        </div>

        <div class="wrapper__input">
            <label for="second-number">Digite outro número</label>
            <input type="number" name="second-number" id="second-number">
        </div>

        <button type="submit">Calcular</button>
    </form>
</body>
</html>