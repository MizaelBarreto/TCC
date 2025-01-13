<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="icon" type="image/x-icon" href="public/imagens/HAYDAMico.ico">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel ="stylesheet" href="app/css/Style.css">
        <title>Nova senha</title>
    </head>
    <body>
        <main>
            <div class="icon">
                <img src="public/imagens/MTO.png" alt="MTO" width="30%" height="10%">
                <img src="public/imagens/Logo2.png" alt="logo" width="12.5%" height="12.5%">
            </div>
            <div class="form">
                <form name="frmLogin" action="/projetoscti26/mudasenha" method="post">
                    <p class="texto">Digite o código</p>
                    <input type="text" class="textinput" name="codigo"></input>
                    <p class="texto">Insira a nova senha</p>
                    <input type="password" class="textinput" name="novasenha"></input>
                    <p class="texto">Confirme sua senha</p>
                    <input type="password" class="textinput" name="confirmasenha"></input>
                    <div class="divbotao">
                        <input type="submit" class="botao" value="Trocar senha" name="btnNovaSenha"></input>
                    </div>
                </form>
            </div>
        </main>
    </body>
</html>