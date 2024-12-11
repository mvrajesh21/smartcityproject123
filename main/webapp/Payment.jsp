<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Payment Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: #f5f5f5;
        }

        .rounded {
            border-radius: 1rem;
        }

        .nav-pills .nav-link {
            color: #555;
        }

        .nav-pills .nav-link.active {
            color: white;
        }

        .qr-code-container {
            text-align: center;
            margin-top: 20px;
        }

        .qr-code-container canvas {
            max-width: 100%;
            height: auto;
        }

        .btn-generate {
            display: block;
            margin: 0 auto;
            margin-bottom: 20px;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/qrcode-generator/1.4.4/qrcode.min.js"></script>
</head>

<body>
    <div class="container py-5">
        <div class="row mb-4">
            <div class="col-lg-8 mx-auto text-center">
                <h1 class="display-4">Complete Payment Page</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8 mx-auto">
                <div class="card">
                    <div class="card-header">
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                            <li class="nav-item">
                                <a data-toggle="pill" href="#credit-card" class="nav-link active">
                                    <i class="fas fa-credit-card mr-2"></i> Credit/Debit Card
                                </a>
                            </li>
                            <li class="nav-item">
                                <a data-toggle="pill" href="#phonepe" class="nav-link">
                                    <i class="fas fa-mobile-alt mr-2"></i> PhonePe / UPI
                                </a>
                            </li>
                            <li class="nav-item">
                                <a data-toggle="pill" href="#net-banking" class="nav-link">
                                    <i class="fas fa-university mr-2"></i> Net Banking
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="card-body">
                        <!-- Credit/Debit Card Section -->
                        <div id="credit-card" class="tab-pane fade show active">
                            <h6>Enter your card details</h6>
                            <form>
                                <div class="form-group">
                                    <label for="card-name">Cardholder Name</label>
                                    <input type="text" class="form-control" id="card-name" placeholder="Cardholder Name" required>
                                </div>
                                <div class="form-group">
                                    <label for="card-number">Card Number</label>
                                    <input type="text" class="form-control" id="card-number" placeholder="Card Number" required>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="expiry-date">Expiry Date</label>
                                        <input type="text" class="form-control" id="expiry-date" placeholder="MM/YY" required>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="cvv">CVV</label>
                                        <input type="text" class="form-control" id="cvv" placeholder="CVV" required>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-primary btn-block">Pay Now</button>
                            </form>
                        </div>

                        <!-- PhonePe / UPI Section -->
                        <div id="phonepe" class="tab-pane fade">
                            <h6>Pay via UPI</h6>
                            <p>Click the button below to generate a QR code for payment.</p>
                            <div class="form-group">
                                <button type="button" class="btn btn-success btn-generate" onclick="generateQRCode()">Generate QR Code</button>
                            </div>
                            <div id="qr-code-container" class="qr-code-container"></div>
                        </div>

                        <!-- Net Banking Section -->
                        <div id="net-banking" class="tab-pane fade">
                            <h6>Select your bank</h6>
                            <form>
                                <div class="form-group">
                                    <label for="select-bank">Choose Bank</label>
                                    <select class="form-control" id="select-bank">
                                        <option disabled selected>--Select Bank--</option>
                                        <option>Bank 1</option>
                                        <option>Bank 2</option>
                                        <option>Bank 3</option>
                                        <option>Bank 4</option>
                                        <option>Bank 5</option>
                                        <option>Bank 6</option>
                                        <option>Bank 7</option>
                                        <option>Bank 8</option>
                                        <option>Bank 9</option>
                                        <option>Bank 10</option>
                                    </select>
                                </div>
                                <button type="button" class="btn btn-primary btn-block">Proceed to Pay</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery and Bootstrap Bundle -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

    <script>
    function generateQRCode() {
        const upiID = "9346339305@ibl"; // UPI ID of the recipient
        const amount = "20.00"; // Amount to pay
        const name = "Recipient Name"; // Display name of the recipient (optional)

        // Create the UPI deep link using string concatenation
        const upiLink = "upi://pay?pa=" + upiID + "&pn=" + encodeURIComponent(name) + "&am=" + amount + "&cu=INR";

        // Generate the QR Code
        const qrContainer = document.getElementById("qr-code-container");
        qrContainer.innerHTML = ""; // Clear any existing QR code
        const qrCode = qrcode(0, "L");
        qrCode.addData(upiLink);
        qrCode.make();
        qrContainer.innerHTML = qrCode.createImgTag(4); // Append the generated QR code as an image

        // Simulate payment success (in a real scenario, you'd handle this from the payment gateway)
        // For now, we'll assume payment is successful and redirect to userhome.jsp
        setTimeout(function() {
            // Redirect to the user home page after successful payment
            window.location.href = "userhome.jsp";
        }, 5000); // Redirect after 3 seconds (or based on actual payment response)
    }

    </script>
</body>

</html>
