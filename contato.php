
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = htmlspecialchars($_POST['nome']);
    $email = htmlspecialchars($_POST['email']);
    $mensagem = htmlspecialchars($_POST['mensagem']);

    $to = "email_do_laboratorio@universidade.br";
    $subject = "Contato do site";
    $body = "Nome: $nome\nEmail: $email\n\nMensagem:\n$mensagem";

    if (mail($to, $subject, $body)) {
        echo "Mensagem enviada com sucesso!";
    } else {
        echo "Erro ao enviar mensagem.";
    }
}
?>
