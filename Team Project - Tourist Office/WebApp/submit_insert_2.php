<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert data</title>
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

$Proorismos = $_POST['Proorismos'];
$Timi_Paketou = $_POST['Timi_Paketou'];
$Hm_Anaxorisis = $_POST['Hm_Anaxorisis'];
$Hm_Epistrofis = $_POST['Hm_Epistrofis'];

$query = "INSERT INTO prosfora(Proorismos,Timi_Paketou,Hm_Anaxorisis,Hm_Epistrofis) VALUES (
			'$Proorismos',
			'$Timi_Paketou',
			'$Hm_Anaxorisis',
			'$Hm_Epistrofis')";
  
  print("$query");
    //execute query 

    $queryexe = mysqli_query($connectionstring, $query);
    if ($queryexe) { 
	mysqli_query($connectionstring, "COMMIT");
	print("<p><font size=\"+1\">Entry inserted successfully</font></p>");
	} else { 
	print("<p><font size=\"+1\">Error in insert!</font></p>");
	} 
	
    //disconnect from database 
    mysqli_close($connectionstring); 

?>
      </p>
	<center>
	<a href="insert_2.php"><input class="linkbtn" type="button" value="Εισαγωγή Νέας Προσφοράς" /></a><BR>
	<a href="select_2.php"><input class="linkbtn" type="button" value="Λίστα Προσφορών" /></a><BR>
    <a href="index.html"><input class="linkbtn" type="button" value="Home" /></a><BR>
	</center>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>