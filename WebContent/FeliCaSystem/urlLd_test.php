<?

mb_language("ja");
mb_internal_encoding("UTF-8");
$str = $_GET['str'];

// Connect Mysql
$link = mysql_connect("localhost","root","root");
if(!$link){
    //print("Connect error\n");
    die('error'.mysql_error());
}
//print("Success\n");

$db_selected = mysql_select_db("cvg_db",$link);
if(!$db_selected){
	//print("select error\n");
	die('error'.mysql_error());
}
//print("select success\n");
mysql_set_charset('utf8');
$result = mysql_query($str);
if(!$result){
	//print("Insert Error\n");
  	die('error'.mysql_error());
}else{
	print_r("Success");
}
?>