<?php 

$dbhost = 'localhost';
$dbuser = '---EDIT THIS---';
$dbpass = '---EDIT THIS---';

$dbname = '---EDIT THIS---';

$connectionstring = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
// Check connection
if ($connectionstring ->connect_error) {
    die("Connection failed: " . $connectionstring ->connect_error);
}

echo "Connected successfully";


printf("Initial character set: %s\n", $connectionstring ->character_set_name());

/* change character set to utf8 */
if (!$connectionstring ->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $connectionstring ->error);
    exit();
} else {
    printf("Current character set: %s\n", $connectionstring ->character_set_name());
}


//$connectionstring = mysql_connect($dbhost, $dbuser, $dbpass) or die('Error connecting to mysql');
//mysql_select_db($dbname,$connectionstring) or die("Couldn't open your_database: ");
//mysql_query('set character set greek',$connectionstring);
//mysql_query("SET NAMES 'greek'",$connectionstring);

//mysqli_query('set character set greek',$connectionstring);
//mysqli_query("SET NAMES 'greek'",$connectionstring);

?> 
