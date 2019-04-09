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

$A_APros = $_POST['A_APros'];
$Proorismos = $_POST['Proorismos'];
$Timi_Paketou = $_POST['Timi_Paketou'];
$Hm_Anaxorisis = $_POST['Hm_Anaxorisis'];
$Hm_Epistrofis = $_POST['Hm_Epistrofis'];

$query = "UPDATE prosfora SET
			 Proorismos='$Proorismos',
			 Timi_Paketou='$Timi_Paketou',
			 Hm_Anaxorisis='$Hm_Anaxorisis',
			 Hm_Epistrofis='$Hm_Epistrofis'
			 WHERE A_APros = '$A_APros'";
  
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
	<a href="update_2.php"><input class="linkbtn" type="button" value="Ενημέρωση Προσφοράς" /></a><BR>
	<a href="select_2.php"><input class="linkbtn" type="button" value="Λίστα Προσφορών" /></a><BR>
    <a href="index.html"><input class="linkbtn" type="button" value="Home" /></a><BR>
	</center>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>