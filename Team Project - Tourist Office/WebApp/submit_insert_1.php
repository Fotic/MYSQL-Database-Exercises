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

$FName = $_POST['FName'];
$LName = $_POST['LName'];
$Thl = $_POST['Thl'];
$Email = $_POST['Email'];
$Hm_Genisis = $_POST['Hm_Genisis'];

$query = "INSERT INTO pelaths (FName,LName,Thl,Email,Hm_Genisis) VALUES (
			'$FName',
			'$LName',
			'$Thl',
			'$Email',
			'$Hm_Genisis')";
  
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
	<a href="insert_1.php"><input class="linkbtn" type="button" value="Εισαγωγή Νέου Πελάτη" /></a><BR>
	<a href="select_1.php"><input class="linkbtn" type="button" value="Λίστα Πελατών" /></a><BR>
    <a href="index.html"><input class="linkbtn" type="button" value="Home" /></a><BR>
	</center>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>