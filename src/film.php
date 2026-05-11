<?php
$id = 0;
if(isset($_GET['id'])){
    $id = $_GET['id'];
}else{
    $id = 3;
}

$sql = "SELECT filmy.id,filmy.rok,filmy.nazwa_pl,filmy.nazwa_rum, AVG(ocena.rate) AS ocena FROM `filmy` LEFT JOIN ocena ON filmy.id = ocena.film_id WHERE filmy.id = 3;";
$result = mysqli_query($conn,$sql);

while($row = mysqli_fetch_array($result)){
    $id = $row["id"];
    $rok = $row["rok"];
    $nazwa_pl = $row["nazwa_pl"];
    $nazwa_rum = $row["nazwa_rum"];
    $rok = $row["rok"];
    $ocena = $row["ocena"];

    echo "<h2>$nazwa_pl ($rok)</h2>";
    
    echo "<i>$nazwa_rum</i>";
    echo "<br>";
    if(isset($ocena) && $ocena >0){
        echo "<b>$ocena</b>";
    }else{
        echo "<b>brak oceny</b>";
    }

}

$sql = "SELECT zdjecza.name FROM filmy LEFT JOIN zdjecza ON zdjecza.film_id = filmy.id WHERE filmy.id = 3;";
$result = mysqli_query($conn,$sql);
echo "<h3>Galeria</h3>";
echo "<div>";
while($row = mysqli_fetch_array($result)){
    echo "<img onClick='change('camera1.png')' src='camera.png' alt='Asd' class='mini'>";
}
echo "</div>";
echo "<hr>";