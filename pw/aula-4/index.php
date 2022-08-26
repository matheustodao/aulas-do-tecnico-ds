<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="cadastrar.php" method="POST">
        <div>
            <label for="name">Nome</label>
            <input name="name" id="name">
        </div>

        <div>
            <label for="last_name">Sobrenome</label>
            <input name="last_name" id="last_name">
        </div>

        <div>
            <label for="email">Email</label>
            <input name="email" id="email" type="email">
        </div>

        <div>
            <label for="phone">Celular</label>
            <input name="phone" id="phone" inputmode="tel">
        </div>

        <div>
            <label for="gender">Gênero</label>
            <select name="gender" id="gender">
                <option value="male">Masculino</option>
                <option value="female">Femenino</option>
            </select>
        </div>

        <div>
            <label for="job">Cargo</label>
            <input name="job" id="job">
        </div>

        <div>
            <label for="cpf">CPF</label>
            <input name="cpf" id="cpf">
        </div>

        <div>
            <label for="salary">Salário</label>
            <input type="number" inputmode="numeric" name="salary" id="salary">
        </div>

        <div>
            <label for="shift">Cargo</label>
            <select name="shift" id="shift">
                <option value="morning">Manhã</option>
                <option value="afternoon">Tarde</option>
                <option value="night">Noite</option>
            </select>
        </div>

        <div>
            <label for="description_of_office">Descrição do cargo</label>
            <textarea name="description_of_office" id="description_of_office">
            </textarea>
        </div>
        
        <div>
            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="ativo">Ativo</option>
                <option value="férias">Férias</option>
            </select>
        </div>
        
        <div>
            <label for="salary">Salário</label>
            <input name="salary" id="salary" type="file" />
        </div>
        
        <button type="submit">Cadastrar</button>
    </form>

    <div>
        <h4>Ou</h4>
        <a href="./lista.php">Ver os carros cadastrados</a>
    </div>
</body>
</html>
