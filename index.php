<?php
    echo "<h1>"."id"."   -   ";
    echo "name"."   -   ";
    echo "dept"."<br/>"."<h1/>";
?>


<!-- <?php
// Fetch data 
$con = mysqli_connect("localhost","root","","db_test");

$sql="SELECT * FROM  user";
if($result=mysqli_query($con,$sql)){
    while($row=mysqli_fetch_assoc($result)){
        echo "<h1>".$row['id']."   -   ";
        echo $row['name']."   -   ";
        echo $row['dept']."<br/>"."<h1/>";
    }
}
?> -->


<!-- <?php
// Procedure with no pram
$con = mysqli_connect("localhost","root","","db_test");

$sql="CALL getResult();";
if($result=mysqli_query($con,$sql)){
    while($row=mysqli_fetch_assoc($result)){
        echo "<h1>".$row['id']."   -   ";
        echo $row['name']."   -   ";
        echo $row['dept']."<br/>"."<h1/>";
    }
}
?> -->




<!-- <?php
// Procedure with input pram
$con = mysqli_connect("localhost","root","","db_test");

$sql="CALL getResultWithInput(3);";
if($result=mysqli_query($con,$sql)){
    while($row=mysqli_fetch_assoc($result)){
        echo "<h1>".$row['id']."   -   ";
        echo $row['name']."   -   ";
        echo $row['dept']."<br/>"."<h1/>";
    }
}
?> -->

<!-- <?php
// Procedure with input & Output pram
$con = mysqli_connect("localhost","root","","db_test");

$sql="CALL getResultWithInputOutput(3, @p1);";
mysqli_query($con,$sql);
$sql="SELECT @p1 AS sname;";
if($result=mysqli_query($con,$sql)){
    while($row=mysqli_fetch_assoc($result)){
        echo "<h1>"."ONLY PRINT NAME: ";
        echo $row['sname']."<h1/>";
    }
}
?> -->

<!-- <?php
// Procedure with input & Multiple Output pram
$con = mysqli_connect("localhost","root","","db_test");

$sql="CALL getResultWithInputMultipleOutput(4, @p1, @p2);";
mysqli_query($con,$sql);
$sql="SELECT @p1 AS sname, @p2 AS sdept";
if($result=mysqli_query($con,$sql)){
    while($row=mysqli_fetch_assoc($result)){
        echo "<h1>"."ONLY PRINT NAME: ";
        echo $row['sname']."<h1/><br/>";
        echo "<h1>"."ONLY PRINT DEPT: ";
        echo $row['sdept']."<h1/>";
    }
}
?> -->


<!-- <?php
// Procedure with Function
$con = mysqli_connect("localhost","root","","db_test");

$sql="SELECT getUserCountWithFunction() AS user_count;";

if($result=mysqli_query($con,$sql)){
    while($row=mysqli_fetch_assoc($result)){
        echo "<h1>"."PRINT USER NUMBER : ";
        echo $row['user_count']."<h1/><br/>";
    }
}
?> -->






