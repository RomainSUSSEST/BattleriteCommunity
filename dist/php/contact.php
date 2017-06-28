<?php
    $from = 'Battlerite Contact Form';
    $to = 'howkalm@gmail.com';
    $subject = 'Message from Battlerite Contact Form';

    function errorHandler ($message) {
        die(json_encode(array(
            'type'     => 'error',
            'response' => $message
        )));
    }

    function successHandler ($message) {
        die(json_encode(array(
            'type'     => 'success',
            'response' => $message
        )));
    }

    if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && $_SERVER['HTTP_X_REQUESTED_WITH']  == 'XMLHttpRequest') {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $message = $_POST['message'];
        $body = "De: $name\n\r E-Mail: $email\n\r Message:\n\r $message";

        $pattern = '/[\r\n]|Content-Type:|Bcc:|Cc:/i';
        if (preg_match($pattern, $name) || preg_match($pattern, $email) || preg_match($pattern, $message)) {
            errorHandler('Header injection detected.');
        }

        // Check if name has been entered
        if (!$_POST['name']) {
            errorHandler('Please enter your name.');
        }

        // Check if email has been entered and is valid
        if (!$_POST['email'] || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            errorHandler('Please enter a valid email address.');
        }

        // Check if message has been entered
        if (!$_POST['message']) {
            errorHandler('Please enter your message.');
        }

        // prepare headers
        $headers  = 'MIME-Version: 1.1' . PHP_EOL;
        $headers .= 'Content-type: text/html; charset=utf-8' . PHP_EOL;
        $headers .= "From: $name <$email>" . PHP_EOL;
        $headers .= "Return-Path: $to" . PHP_EOL;
        $headers .= "Reply-To: $email" . PHP_EOL;
        $headers .= "X-Mailer: PHP/". phpversion() . PHP_EOL;

        // If there are no errors, send the email
        $result = mail($to, $subject, $body, $headers);
        if ($result!="") {
            successHandler('Votre message a bien été envoyé! Merci de l\'intérêt que vous portez à Battlerite Community.');
        } else {
            errorHandler('Une erreur est parvenue lors de l\' de votre message, veuillez réessayer s\'il vous plaît.');
        }
    } else {
        errorHandler('Allowed only XMLHttpRequest.');
    }
?>
