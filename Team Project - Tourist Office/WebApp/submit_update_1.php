<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update data</title>
<link rel="stylesheet" type="text/css" href="Style.css">
<link rel="shortcut icon" href="Sources/icon.png" type="image/x-icon">
<link rel="icon" href="Sources/icon.png" type="image/x-icon">
</head>
<body>
  <div align="center" class="whiteform">
    <p><BR>
      <?php 
//echo $_POST['firstname'];


echo 'Before connect';
   include 'Connect.php';
echo 'after connect';

$A_AP = $_POST['A_AP'];
$FName = $_POST['FName'];
$LName = $_POST['LName'];
$Thl = $_POST['Thl'];
$Email = $_POST['Email'];
$Hm_Genisis = $_POST['Hm_Genisis'];

$query = "UPDATE pelaths SET
			 FName='$FName',
			 LName='$LName',
			 Thl='$Thl',
			 Email='$Email',
			 Hm_Genisis='$Hm_Genisis'
			 WHERE A_AP = '$A_AP'";
  
  print("$query");
    //execute query 

    $queryexe = mysqli_query($connectionstring, $query);
    if ($queryexe) { 
	mysqli_query($connectionstring, "COMMIT");
	print("<p><font size=\"+1\">Update successfully</font></p>");
	} else { 
	print("<p><font size=\"+1\">Error in update!</font></p>");
	} 
	
    //disconnect from database 
    mysqli_close($connectionstring); 

?>
      </p>
	<center>
	<a href="update_1.php"><input class="linkbtn" type="button" value="Ενημέρωση Πελάτη" /></a><BR>
	<a href="select_1.php"><input class="linkbtn" type="button" value="Λίστα Πελατών" /></a><BR>
    <a href="index.html"><input class="linkbtn" type="button" value="Home" /></a><BR>
	</center>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>