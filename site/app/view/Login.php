<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/x-icon" href="public/imagens/HAYDAMico.ico">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel ="stylesheet" href="app/css/Style.css">
    <title>Login</title>
</head>
<body> 
    <main>
        <div class="icon">
            <img src="public/imagens/MTO.png" alt="MTO" width="30%" height="10%">
            <img src="public/imagens/Logo2.png" alt="logo" width="12.5%" height="12.5%">
        </div>
        <div class="form">
            <div id="error-message" class="error-message" style="display:none;">
                <div class="message-box" id="messageBox">
                <span class="close-btn" onclick="closeMessageBox()">×</span>
                Email ou senha incorretos. Tente novamente.
            </div>
        </div>
            <form name="frmLogin" action="login" method="post">
                <p class="texto">Email</p>
                <input type="email" class="textinput" name="email"></input>
                <p class="texto">Senha</p>
                <input type="password" class="textinput" name="senha"></input>
                
                <div class="esqueci-div">
                    <a href="/projetoscti26/esqueci" class="esqueci">Esqueci minha senha</a>
                    <a href="/projetoscti26/cadastro" class="esqueci">Cadastrar-se</a>                    
                </div>
                <div class="divbotao">
                <input type="submit" class="botao" value="Entrar"></input>
                </div>
                 <script>
                    window.onload = function() {
                        const urlParams = new URLSearchParams(window.location.search);
                        if (urlParams.has('erro')) {
                            document.getElementById('error-message').style.display = 'block';
                            document.getElementById('email').classList.add('input-error');
                            document.getElementById('senha').classList.add('input-error');
                        }
                    };
                    function closeMessageBox() {
                        document.getElementById("messageBox").style.display = "none";
                    }
                </script> 
            </form>
        </div>
        
    </main>
</body>
</html>
