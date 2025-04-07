<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Form</title>
    <link rel="stylesheet" href="payment-form-style.css"> <!-- Linking external CSS file -->
</head>
<body>

    <div class="form-container">
    <img src="logo.jpg" alt="Logo" class="logo">
    <h1 class="brand-name">Harshadha Creations Handmade Jewelry</h1>
        <h2>Enter Your Details</h2>
        <p><b>Note:</b> After submitting, you will receive a QR code on WhatsApp. Make the payment and send the payment screenshot. Your order will be delivered within 8 days.</p>
        <form method="POST" action="send-details.php">
            <input type="text" name="name" placeholder="Enter your name" required>
            <input type="text" name="phone" placeholder="Enter your phone number" required>
            <input type="email" name="email" placeholder="Enter your email" required>
            <textarea name="address" placeholder="Enter your address" required></textarea>
            <input type="text" name="pincode" placeholder="Enter your pincode" required>
            <button type="submit">Submit</button>
        </form>
    </div>

</body>
</html>
