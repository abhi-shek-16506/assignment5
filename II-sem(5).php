<?php
define('DIR','');
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		/* Left column */
		.leftcolumn {   
		  float: left;
		  width: 40%;
		}

		.mb-2 {
			margin-bottom: 10px;
		}

		.form-control {
			width: 50%;
		}

		/* Right column */
		.rightcolumn {
		  float: left;
		  width: 25%;
		  background-color: #f1f1f1;
		  padding-left: 20px;
		}

		/* Add a card effect for articles */
		.card {
		  background-color: white;
		  padding: 20px;
		  margin-top: 20px;
		}

		/* Clear floats after the columns */
		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}

		/* Footer */
		.formheading {
		  padding: 10px;
		  text-align: center;
		  background: red;
		  margin-top: 20px;
		}
		/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
		@media screen and (max-width: 800px) {
		  .leftcolumn, .rightcolumn {   
		    width: 100%;
		    padding: 0;
		  }
		}
	</style>
</head>
<body>

	<form action="#" method="post" enctype="multipart/form-data">
		<div class="row">
	  	<div class="leftcolumn">
		    <div class="card">
		    	<div class="formheading mb-2">people's bank </div>
		    	<a href="II-sem(5)a.php">Create</a><br>
		    	<a href="II-sem(5)b.php">Debit</a><br>
		    	<a href="II-sem(5)c.php">Credit</a><br>
		    	<a href="II-sem(5)d.php">Balance Enquery</a><br>
		    </div>
		</div>
	</div>
	</form>
</body>
</html>

<?php
if (isset($_POST['save'])) {

	$con = mysqli_connect("localhost","root","","abhi");

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}

$query = mysqli_query($con,"INSERT INTO `abank`( `pnumber`, `fname`, `lname`,`phno`, `dob`, `gender`) VALUES('".$_POST['pnumber']."','".$_POST['fname']."','".$_POST['lname']."','".$_POST['phno']."','".$_POST['dob']."','".$_POST['gender']."')")or die(mysqli_error($con));
if ($query) {
	echo "data uploaded";
}else{
	echo "data Not uploaded";
}

}
?>