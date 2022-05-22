<!DOCTYPE html>
<html lang="en">

<head>
    <title>Online Shopping Site</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/enquiry.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">

</head>

<body>
    <marquee bgcolor="lighblue">Note: All your shopping products will be shipped within 7 days after ordering the product.
       Please keep checking your given email and mobile number to stay updated with us.Thank You for choosing our Online Shopping Site! </marquee>
    <section class="my-5">
        <div id="cod" class="py-5">
            <h2 class="text-center">Cash on delivery</h2>
        </div>

        <div class="w-50 m-auto">
            <form action="index.php" method="post">
                <div class="form-group">
                    <label>Full Name</label>
                    <input type="text" name="name" autocomplete="off" class="form-control"
                        placeholder="Enter your Full name Name">
                </div>
                <div class="form-group">
                    <label>Email Id</label>
                    <input type="text" name="email" autocomplete="off" class="form-control"
                        placeholder="Enter your Email-id">
                </div>
                <div class="form-group">
                    <label>Mobile No</label>
                    <input type="text" name="mobile" autocomplete="off" class="form-control"
                        placeholder="Enter your Mobile-No">
                </div>

                <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" name="product" autocomplete="off" class="form-control"
                        placeholder="Enter product name">
                </div>
                <div class="form-group">
                    <label>Product Price</label>
                    <input type="text" name="price" autocomplete="off" class="form-control"
                        placeholder="Enter product price">
                </div>

                <div class="form-group">
                    <label for="sel1">No of products:</label>
                    <select class="form-control" id="sel1" name="no_products">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                

                <div class="form-group">
                    <label>Address</label>
                    <textarea class="form-control" name="address">
                      </textarea>
                </div>
                <div class="col-md-12 text-center">
                <button type="submit" id="submit" class="btn btn-success" 
                    onclick="alert('Thank You for choosing us! We will soon get in touch with you')">Submit</button>

            </form>
</div>
        </div>
    </section>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>

</html>
