<?php

$id = 0;
if(isset($_GET['id'])){
    $id = $_GET['id'];
}else{
    $id = 3;
}
$sql = "SELECT filmy.id,filmy.rok,filmy.nazwa_pl,filmy.nazwa_rum, AVG(ocena.rate) FROM `filmy` LEFT JOIN ocena ON filmy.id = ocena.film_id WHERE filmy.id = 3;";
$result = mysql_query($conn,$sql);
while($row = mysql_fetch_array($result)){
    $id = $row["id"];
    $rok = $row["rok"];
}