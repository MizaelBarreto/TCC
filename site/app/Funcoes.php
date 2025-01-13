<?php
require __DIR__ . '/../vendor/autoload.php'; //Carrega as classes do PHPMailer

//Função para envio de email
//As referencias a outros arquivos deve ser feita de maneira global, 
//ou seja, fora da função
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

function enviaEmail($pDestinatario, $pNome, $pAssunto, $pHtml)
{
    //Variaveis de configuração do email
    $pRemetente = $_ENV['MAIL_SENDER'];
    $pSenha = $_ENV['MAIL_PASSWORD'];
    $pSMTP = $_ENV['MAIL_HOST'];

    //Configuração do PHP, para exibir erros
    error_reporting(E_ALL);
    ini_set("display_errors", 1);

    try {
        $mail = new PHPMailer(); //Instancia a classe PHPMailer

        //Configuração do servidor de email
        $mail->IsSMTP(); //Define que a mensagem será SMTP
        $mail->Host = $pSMTP; //Endereço do servidor SMTP
        $mail->SMTPAuth = true; //Autenticação SMTP    
        $mail->SMTPSecure = 'tls'; //Tipo de segurança
        $mail->Port = 587; //Porta de comunicação SMTP
        $mail->Username = $pRemetente; //Usuário do servidor SMTP
        $mail->Password = $pSenha; //Senha do servidor SMTP
        $mail->SMTPDebug = 2; //Habilita o debug do SMTP
        $mail->SMTPOptions = array(
            'ssl' => array(
                'verificar_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true
            )
        ); //Permite que o PHPMailer aceite certificados SSL não confiáveis

        //Configuração dos emails do remetente e do destinatário
        $mail->setFrom($pRemetente, 'HAYDAM'); //email do remetente
        //$mail->addReplyTo($pUsuario); //Email para resposta, caso não queira que o usuário responda, coloque no.reply@...
        $mail->addAddress($pDestinatario, $pNome); //email do destinatário

        //Conteúdo do email
        $mail->IsHTML(true); //Se o email vai ser em HTML ou não 
        $mail->Subject = $pAssunto; //O assunto do email
        $mail->Body = $pHtml; //O conteúdo(corpo) do email em HTML
        $mail->CharSet = 'UTF-8'; //Codificação do email
        $mail->AltBody = 'seu email nao suporta html'; //Uma mensagem avisando destinatário que o seu email não suporta HTML
        $enviado = $mail->Send(); //Envia o email

        //Verifica se o email foi enviado
        if ($enviado) {
            echo "E-mail enviado com sucesso!"; //MUDAR
        } else {
            echo "Não foi possível enviar o e-mail."; //MUDAR
            echo "<b>Informações do erro:</b> " . $mail->ErrorInfo; //MUDAR
        }

        //Execeções da biblioteca PHPMailer e do PHP(Instaciamento da classe exception)
    } catch (Exception $e) {
        echo $e->errorMessage(); //mensagens de erro do PHPMailer MUDAR
    } catch (\Exception $e) {
        echo $e->getMessage(); //mensagens de erro do PHP MUDAR
    }
}

function defineCookie($paramNome, $paramValor, $paramMinutos)
{
    setcookie($paramNome, $paramValor, time() + $paramMinutos * 60);
}

function defineSessao($nomeSessao, $param)
{
    session_start();
    $_SESSION[$nomeSessao] = $param;
}

/*Função para destruir cookie e sessão 
        Fonte: http://php.net/manual/pt_BR/function.session-destroy.php
        via https://pt.stackoverflow.com/questions/241268/como-destruir-todas-as-sessõ<es-do-php></es-do-php>
    */
function destroiCookieSessao()
{
    // Inicializa a sessão.
    // Se estiver sendo usado session_name("something"), não esqueça de usá-lo agora!
    session_start();

    // Apaga todas as variáveis da sessão
    $_SESSION = array();

    // Se é preciso matar a sessão, então os cookies de sessão também devem ser apagados.
    // Nota: Isto destruirá a sessão, e não apenas os dados!
    if (ini_get("session.use_cookies")) {
        $params = session_get_cookie_params();
        setcookie(
            session_name(),
            '',
            time() - 42000,
            $params["path"],
            $params["domain"],
            $params["secure"],
            $params["httponly"]
        );
    }

    // Por último, destrói a sessão
    session_destroy();
}

function geraSenha($tamanho = 8, $maiusculas = true, $numeros = true, $simbolos = false)
{
    //$lmin = 'abcdefghijklmnopqrstuvwxyz';
    $lmai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $num = '1234567890';
    $simb = '!@#$%*-';
    $retorno = '';
    $caracteres = '';

    //$caracteres .= $lmin;
    if ($maiusculas) $caracteres .= $lmai;
    if ($numeros) $caracteres .= $num;
    if ($simbolos) $caracteres .= $simb;

    $len = strlen($caracteres);

    for ($n = 1; $n <= $tamanho; $n++) {
        $rand = mt_rand(1, $len);
        $retorno .= $caracteres[$rand - 1];
    }

    return $retorno;
}
