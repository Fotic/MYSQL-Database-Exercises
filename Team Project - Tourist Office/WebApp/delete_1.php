<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Διαγραφή Πελατών</title>
<link rel="stylesheet" type="text/css" href="Style.css">
<link rel="shortcut icon" href="Sources/icon.png" type="image/x-icon">
<link rel="icon" href="Sources/icon.png" type="image/x-icon">
<script language="JavaScript" src="files/gen_validatorv31.js" type="text/javascript"></script>
</head>

<body>
<div class="whiteform">
<center>
  <table width="400" border="0">
    <tr>
       <td><div align="center" class="style1">Διαγραφή Πελατών</div></td>
    </tr>
  </table>  
</center><br><br>
    <form method="POST" action="submit_delete_1.php"  name="myform">
      <center>
      <table>
        <tr>
        <td>
		<div align="center"><strong>ID:</strong> 
        <input name="A_AP" type="text" size="20" pattern="\d+"/>
        <input class="dropbtn" type="submit" value="Διαγραφή" /></div>
        </td>
        </tr>
        </table> 
      </center>
</form>
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("myform");
  frmvalidator.EnableMsgsTogether();
  frmvalidator.addValidation("A_AP","req","Συμπληρώστε πρώτα το πεδίο 'ID' !");
  frmvalidator.addValidation("A_AP","num","Η τιμή που δώσατε δεν είναι ακέραιος αριθμός!");
      </script>
<center>  	  
    <br><br><br><a href="index.html"><input class="linkbtn" type="button" value="Home" /></a>
</center>  
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>
