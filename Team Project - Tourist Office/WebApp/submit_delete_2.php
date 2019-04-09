<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-7" />
<title>Delete data</title>
<link rel="stylesheet" type="text/css" href="Style.css">
<link rel="shortcut icon" href="Sources/icon.png" type="image/x-icon">
<link rel="icon" href="Sources/icon.png" type="image/x-icon">
</head>
<body>
  <div align="center" class="whiteform">
    <p><BR>
      <?php 

    include 'Connect.php';

    $query = "delete from prosfora where A_APros = ".$_POST['A_APros']."";
  
    //execute query 
    if (mysqli_query($connectionstring, $query)) { 
	mysqli_query("COMMIT");
	print("<p><font size=\"+1\">Entry deleted successfully!</font></p>");
	} else { 
	print("<p><font size=\"+1\">Error in delete!</font></p>");
	} 
	
    //disconnect from database 
    mysqli_close($connectionstring); 

?>
      </p>
	<center>
    <a href="select_2.php"><input class="linkbtn" type="button" value="Λίστα Προσφορών" /></a><BR>
	<a href="index.html"><input class="linkbtn" type="button" value="Home" /></a><BR>
	</center>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>