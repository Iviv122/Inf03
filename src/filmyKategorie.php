<?php

echo "<h3>Najnowsze filmy rumunskie</h3>";

$sql = "SELECT filmy.nazwa_pl FROM filmy ORDER BY filmy.rok DESC";
$result = mysqli_query($conn,$sql);

while($row = mysqli_fetch_array($result)){

    $nazwa_pl = $row["nazwa_pl"];
    echo "<p>$nazwa_pl <button>&gt;</button></p>";

}


echo "<h3>TOP 5 kategorii</h3>";

$sql = "SELECT kategorie.nazwa FROM kategorie LEFT JOIN filmy ON kategorie.id = filmy.kategoria_id;";
$result = mysqli_query($conn,$sql);

echo "<ul>";
while($row = mysqli_fetch_array($result)){

    $nazwa = $row["nazwa"];
    echo "<ul>$nazwa</ul>";

}
echo "</ul>";