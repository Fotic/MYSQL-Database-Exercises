<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ενημέρωση Πελατών στο Τουριστικό Γραφείο</title>
<link rel="stylesheet" type="text/css" href="Style.css">
<link rel="shortcut icon" href="Sources/icon.png" type="image/x-icon">
<link rel="icon" href="Sources/icon.png" type="image/x-icon">
<script type='text/JavaScript' src='files/scw.js'></script>
<script language="JavaScript" src="files/gen_validatorv31.js" type="text/javascript"></script>
</head>

<body>
<div class="whiteform">
<center>
  <table width="400" border="0">
    <tr>
       <td><div align="center" class="style1">Ενημέρωση Πελατών</div></td>
    </tr>
  </table>
  <p align="center"></p>
</center>
    <form method="POST" action="submit_update_1.php"  name="myform"   accept-charset="UTF-8">
      <center>
      <table>
        <tr>
        <td>
	  <div align="center"><strong>ID:</strong> <input name="A_AP" id = "A_AP" type="text" size="50" pattern="\d+"/></div><br>
      <div align="center"><strong>Όνομα:</strong> <input name="FName" type="text" id="FName" size="50" pattern="[A-Za-z\s]+"/></div><br>
      <div align="center"><strong>Επώνυμο:</strong> <input name="LName" type="text" id="LName" size="50" pattern="[A-Za-z\s]+"/></div><br>
      <div align="center"><strong>Τηλέφωνο:</strong> <input name="Thl" type="text" id="Thl" size="50" pattern="[0-9]{10}"/></div><br>
      <div align="center"><strong>E-mail:</strong> <input name="Email" type="text" id="Email" size="50" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></div><br>	  
	  <div align="center"> <strong>Ημερ/νία Γέννησης:</strong>  <input type="date" id="Hm_Genisis" name="Hm_Genisis"></div> 
		</td>
        </tr>
       </table>
        <br/><br/>
        <table width="200" border="0">
          <tr>
            <td width="90"><div align="center">
              <input class="dropbtn" type="submit" value="Ενημέρωση" />
            </div></td>
            <td width="100"><div align="center">
              <input class="dropbtn" type="reset" value="Καθαρισμός" />
            </div></td>
          </tr>
        </table>
			  <BR><a href="index.html"><input class="linkbtn" type="button" value="Home" /></a><BR>
    </center>
</form>
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("myform");
  frmvalidator.EnableMsgsTogether();
  frmvalidator.addValidation("A_AP","req","Συμπληρώστε πρώτα το πεδίο 'ID' !");
  frmvalidator.addValidation("FName","req","Συμπληρώστε πρώτα το πεδίο 'Όνομα' !");
  frmvalidator.addValidation("LName","req","Συμπληρώστε πρώτα το πεδίο 'Επώνυμο' !");
  frmvalidator.addValidation("Thl","req","Συμπληρώστε πρώτα το πεδίο 'Τηλέφωνο' !");
  frmvalidator.addValidation("Email","Συμπληρώστε πρώτα το πεδίο 'Ε-mail' !");  
  frmvalidator.addValidation("Hm_Genisis","req","Συμπληρώστε πρώτα το πεδίο 'Ημερ/νία Γέννησης' !");
  </script>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>
