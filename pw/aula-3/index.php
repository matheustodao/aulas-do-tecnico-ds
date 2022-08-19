<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="cadastrar.php" method="POST">
        <div>
            <label for="model">Modelo</label>
            <input name="model" id="model">
        </div>

        <div>
            <label for="brand">Marca</label>
            <input name="brand" id="brand">
        </div>

        <div>
            <label for="color">Cor</label>
            <input name="color" id="color">
        </div>

        <div>
            <label for="gasType">Combustivel</label>
            <select name="gasType" id="gasType">
                <option value="gas">Gasolina</option>
                <option value="flex">Flex</option>
            </select>
        </div>

        <div>
            <label for="factoryYear">Ano de fabricação</label>
            <input type="number" inputmode="numeric" name="factoryYear" id="factoryYear">
        </div>

        <div>
            <label for="price">Valor</label>
            <input type="number" inputmode="numeric" name="price" id="price">
        </div>

        <div>
            <label for="licensePlate">Placa</label>
            <input name="licensePlate" id="licensePlate">
        </div>

        <div>
            <label for="chassis">Chassi</label>
            <input name="chassis" id="chassis">
        </div>

        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>
