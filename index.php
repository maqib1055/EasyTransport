<?php
  session_start();
  include('admin/vendor/inc/config.php');
  //include('vendor/inc/checklogin.php');
  //check_login();
  //$aid=$_SESSION['a_id'];
?>
<!DOCTYPE html>
<html lang="en">
<!--Head-->
<?php include("vendor/inc/head.php");?>

<body>

    <!-- Navigation -->
    <?php include("vendor/inc/nav.php");?>
    <!--End Navigation-->

    <header>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

            <div class="carousel-inner" role="listbox">

                <!-- Slide One - Set the background image for this slide in the line below -->
                <div class="carousel-item active" style="background-image: url('vendor/img/slide_2.jpg')">
                </div>

                <!-- Slide Three - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('vendor/img/slide01.jpeg')">
                </div>

                <!-- Slide Two - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('vendor/img/p_banner1.jpg')">
                </div>


            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        </div>
    </header>

    <!-- Page Content -->
<br><br>

    <div class="container text-dark bg-warning"><center><h3>Search Vehicle With Your Location</h3>
<input class="form-control" id="myInput" type="text" placeholder="Search vehicle with Location......."></center><br><br></div>
<br><br>
    <div class="container">
   

<br>
        <h1 class="my-4">Welcome to Online Car Booking System</h1>

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-6 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Why Us</h4>
                    <div class="card-body">
                        <p class="card-text">We create accountability in the transport sector, enhance mobility and ease of accessing various transport modes</p>
                    </div>

                </div>
            </div>
            <div class="col-lg-6 mb-4">
                <div class="card h-100">
                    <h4 class="card-header">Core Values</h4>
                    <div class="card-body">
                        <p class="card-text">
                            Excellence, Trust and Openness, Integrity, Take Responsibility, Customer Orientation
                        </p>
                    </div>
                </div>
            </div>
        </div>
 
        <hr>

</div>
</div>
<div class="container" id='myTable'>
<center><h1 class="my-4">Our Vehicles For your Drive</h1></center>
    <div class="row">
        <?php
include('connect.php');


$query="select * from tms_vehicle";

$run=mysqli_query($con,$query);

$row=mysqli_num_rows($run);

while($data=mysqli_fetch_array($run)){

?>


 <tr>
  <style>
    .card img {
  filter: grayscale(100%);
}
:hover.card1 img{
  filter: grayscale(0%);
}
  .card1{padding:10px; color:white; }
  .card1:hover{background-image:linear-gradient(black,grey,grey,black);
 border-radius:2px;transition-duration:1s;color:white;text-shadow: 3px 3px 4px black;}
 .card1:hover button{background-color:black;
 border-radius:2px;transition-duration:0.2s;color:white;font-weight:bold;}
 </style>
 <?php echo"
  <div class='col-lg-4 col-sm-6 portfolio-item'  >
 <div class='card card1 bg-dark' >

 <div class='row'>
 <img class='card-img-top col-md-12' style='width:100%;height:16rem ; 'src='$data[7]' alt='Card image cap' >
 <div class='card-body'>

    <h5><p class='card-title '  ><b>Name:</b> $data[1]</p>
    
    <p class='card-text' ><b>Number:</b>  $data[2]<br></p>
    <p class='card-text' ><b>Location:</b> $data[6]<br></p>
    <a href='usr/'>
    <button type='button' style='width:100%;' class='btn btn-warning col-md-7' data-toggle='modal' data-target='#myModal'>
   
   Book Vehicle
    </button></a><br><br>

    
  </div>
  </div>

</div>
</div>



";
}
?>
</div></div></div>
<div class="container">
    <div class="row">

        
        <center><h1 class="my-4">Client Testimonials</h1></center>

        <div class="row">
            <?php

      $ret="SELECT * FROM tms_feedback where f_status ='Published' ORDER BY RAND() "; //get all feedbacks
      $stmt= $mysqli->prepare($ret) ;
      $stmt->execute() ;//ok
      $res=$stmt->get_result();
      $cnt=1;
      while($row=$res->fetch_object())
    {
    ?>
 
            <div class="col-lg-6 mb-4">
                <div class="card h-100">
                    <h4 class="card-header"><?php echo $row->f_uname;?></h4>
                    <div class="card-body">
                        <p class="card-text"><?php echo $row->f_content;?></p>
                    </div>
                </div>
            </div>
            <?php }?>
        </div>

    </div>
    </div>

</div>
    <!-- /.container -->

    <!-- Footer -->
    <?php include("vendor/inc/footer.php");?>
    <!--.Footer-->
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable div").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

</body>

</html>