<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/x-icon" href="public/imagens/HAYDAMico.ico">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel ="stylesheet" href="app/css/Style.css">
    <title>Cadastro</title>
</head>
<body>
    <main>
        <div class="icon">
            <img src="public/imagens/MTO.png" alt="MTO" width="30%" height="10%">
            <img src="public/imagens/Logo2.png" alt="logo" width="12.5%" height="12.5%">
        </div>
        <div class="form">
            <form name="frmCadastro" method="post" action="/projetoscti26/cadastro">
                <p class="texto">Nome</p>
                    <input type="text" class="textinput" name="nome"></input>
                <p class="texto">Email</p>
                    <input type="email" class="textinput" name="email"></input>
                <p class="texto">Senha</p>
                    <input type="password" class="textinput" name="senha"></input>
                <p class="texto">Confirme sua senha</p>
                    <input type="password" class="textinput" name="confirmasenha"></input>
                <div class="esqueci-div">    
                    <a href="/projetoscti26/login" class="esqueci">Voltar para o login</a>
                </div>
                <div class="divbotao">
                    <input type="submit" class="botao" value="Cadastrar"></input>
                </div>
            </form>
        </div>
    </main>
</body>
</html>