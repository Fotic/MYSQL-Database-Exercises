<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Εισαγωγή Προσφορών στο Τουριστικό Γραφείο</title>
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
       <td><div align="center" class="style1">Εισαγωγή Προσφορών</div></td>
    </tr>
  </table>
  <p align="center"></p>
</center>
    <form method="POST" action="submit_insert_2.php"  name="myform"   accept-charset="UTF-8">
      <center>
      <table>
        <tr>
        <td>
      <div align="center"><strong>Προορισμός:</strong> <input name="Proorismos" type="text" size="50" pattern="[A-Za-z\s]+"/></div><br>
      <div align="center"><strong>Τιμή Πακέτου:</strong> <input name="Timi_Paketou" type="text" size="50" pattern="[0-9]{1,4}(\.\,\d{2})?"/></div><br>
	  <div align="center"> <strong>Ημερ/νία Αναχώρισης:</strong>  <input type="date" name=Hm_Anaxorisis></div> 
	  <div align="center"> <strong>Ημερ/νία Επιστροφής:</strong>  <input type="date" name=Hm_Epistrofis></div> 	  
        </td>
        </tr>
        </table>
        <br/><br/>
        <table width="200" border="0">
          <tr>
            <td width="90"><div align="center">
              <input class="dropbtn" type="submit" value="Εισαγωγή" />
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
  frmvalidator.addValidation("Proorismos","req","Συμπληρώστε πρώτα το πεδίο 'Προορισμός' !");
  frmvalidator.addValidation("Timi_Paketou","req","Συμπληρώστε πρώτα το πεδίο 'Τιμή Πακέτου' !");
  frmvalidator.addValidation("Hm_Anaxorisis","req","Συμπληρώστε πρώτα το πεδίο 'Ημερ/νία Αναχώρισης' !");
  frmvalidator.addValidation("Hm_Epistrofis","req","Συμπληρώστε πρώτα το πεδίο 'Ημερ/νία Επιστροφής' !");
      </script>
</div>
<div class="footer"><p>Copyright © 2018 by Ομάδα 11</p></div>
</body>
</html>
