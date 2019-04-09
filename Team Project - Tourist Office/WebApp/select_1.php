<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-7" />
<title>Λίστα Πελατών</title>
<link rel="stylesheet" type="text/css" href="Style.css">
<link rel="shortcut icon" href="Sources/icon.png" type="image/x-icon">
<link rel="icon" href="Sources/icon.png" type="image/x-icon">
</head>

<body>
<div id="tblprop">
<p align="center"><strong><font size="+2">Λίστα Πελατών:</font></strong><br/>
<center>
<table border="2" bgcolor="lightcyan">
<thead>
 <tr>
  <th>
   ID
  </th>
  <th>
   Όνομα
  </th>
  <th>
   Επίθετο
  </th>
  <th>
   Τηλέφωνο
  </th>
  <th>
   E-mail
  </th>
  <th>
   Ημ. Γέννησης
  </th>    
 </tr>
</thead>
<tbody>
<?php
    //phpinfo();
    include 'Connect.php';

    //SQL query 
    $query = "Select * from pelaths"; 
     
    //execute query 
	$result = mysqli_query($connectionstring, $query);
	
	if (!$result) {
 		die('Could not query:' . mysql_error());
	}

    //query database 
    while($row = mysqli_fetch_array($result, MYSQLI_NUM))
    { 
	
    print ("<tr><td><div align=\"center\"> $row[0]</div></td> 
	            <td><div align=\"center\"> $row[1] </div></td>     
                <td><div align=\"center\"> $row[2] </div></td>
				<td><div align=\"center\"> $row[3] </div></td>
				<td><div align=\"center\"> $row[4] </div></td>
				<td><div align=\"center\"> $row[5] </div></td>");  
    print ("</tr>");
    
    }  
 
    //disconnect from database 
    mysqli_close($connectionstring);

    ?> 

</tbody>
	</table>
    </center>
<br><br>
<center>  
    <a href="index.html"><input class="linkbtn" type="button" value="Home" /></a>
</center>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>
