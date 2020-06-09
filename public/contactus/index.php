<?php
  use PHPMailer\PHPMailer\PHPMailer;
  use PHPMailer\PHPMailer\Exception;

  require 'vendor/phpmailer/phpmailer/src/Exception.php';
  require 'vendor/phpmailer/phpmailer/src/PHPMailer.php';
  require 'vendor/phpmailer/phpmailer/src/SMTP.php';

  // Include autoload.php file
  require 'vendor/autoload.php';
  // Create object of PHPMailer class
  $mail = new PHPMailer(true);

  $output = '';

  if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    try {
      $mail->isSMTP();
      $mail->Host = 'smtp.gmail.com';
      $mail->SMTPAuth = true;
      // Gmail ID which you want to use as SMTP server
      $mail->Username = 'foodukowebsite@gmail.com';
      // Gmail Password
      $mail->Password = 'fooduko@gmail';
      $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
      $mail->Port = 587;

      // Email ID from which you want to send the email
      $mail->setFrom('foodukowebsite@gmail.com');
      // Recipient Email ID where you want to receive emails
      $mail->addAddress('foodukowebsite@gmail.com');

      $mail->isHTML(true);
      $mail->Subject = 'Form Submission';
      $mail->Body = "<h3>Name : $name <br>Email : $email <br>Message : $message</h3>";

      $mail->send();
	  header("Location: thanks.html");
      $output = 'header("Location: thanks.html");';
    } catch (Exception $e) {
      $output = '<div class="alert alert-danger">
                  <h5>' . $e->getMessage() . '</h5>
                </div>';
    }
  }

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us Using PHPMailer & Gmail SMTP</title>
  <link rel='stylesheet' href='style-contact.css' />
</head>
<body>
<header id="header">
        <a href="../index.html" class="logo"> FOODUKO </a>
        <ul>
            <li><a href="../index.html"> Home </a></li>
            <li><a href="../Categories.html"> Categories </a></li>
            <li><a href="../FoodFacts.html"> FoodFacts </a></li>
            <li><a href="../Recipes.html"> Recipes </a></li>
        </ul>
        <div class="toggle" onclick="toggle()"></div>
    </header>
  <div class="contain">
    <div class="food">
      <div class="masala">
	     <span class="spicy"></span>
		 <span class="spicy"></span>
		 <span class="spicy"></span>
		 <span class="spicy"></span>
        <div class="gravy">
            <h1>Contact Us</h1>
          <div class="container">
            <form action="#" method="POST">
              <div class="input-field">
                <?= $output; ?>
              </div>
              <div class="input-field">
                <input type="text" name="name" id="name" class="form-control"  required>
				<label for="name">Name</label>
				<span></span>
              </div>
              <div class="input-field">
                <input type="email" name="email" id="email" class="form-control" required>
				<label for="email">E-Mail</label>
				<span></span>
              </div>
              <div class="input-field">
                
                <input type="text" name="subject" id="subject" class="form-control"  required>
				<label for="subject">Subject</label>
				<span></span>
              </div>
              <div class="input-field">
                
                <input type="text" name="message" id="message" rows="5" class="form-control" required>
				  <label for="message">Message</label>
				  <span></span>
              </div>
              <div class="btn">
			  <span></span>
			  <span></span>
			  <span></span>
			  <span></span>
                <input type="submit" name="submit" value="Submit" class="btn btn-danger btn-block" id="sendBtn">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>