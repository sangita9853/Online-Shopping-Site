<?php

$con = mysqli_connect('localhost' ,'root');

if($con){
        echo "Connection successful";
}
else{
       echo "No connection";
}

mysqli_select_db($con, 'ecommerceapp');

$name = $_POST['name'];
$email = $_POST['email'];
$mobile= $_POST['mobile'];
$product= $_POST['product'];
$price= $_POST['price'];
$no_products= $_POST['no_products'];
$address= $_POST['address'];

$query = "insert into codb (name, email,mobile,product,price,no_products,address)
values ('$name','$email','$mobile','$product','$price','$no_products','$address')";

echo "$query";
mysqli_query($con,$query);
header('location:index.php');

?>


