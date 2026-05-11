<?php
//$conn = mysqli_connect("mariadb", "db", 'db', "filmy");
?>
<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filmy</title>
    <link href="styl.css" rel="stylesheet">
</head>

<body>
    <header>
        <h1>Najlepsze filmy</h1>
        <img src="./camera.png" width="48px" height="48px">
    </header>
    <main>
        <div id="main">
            <h2>Tytul i rok</h2>
            <i>Rummunski</i>
            <b>Gotunki</b>
            <b>Srednia lub brak</b>
            <h3>Galeria</h3>

            <div>
                for zdjecza
            </div>
            <hr>
            Klinknij na zdjecie,aby je powie || photo
            <?php
            /*
            $sql1 = "SELECT * FROM filmy";
            $result = mysqli_query($conn, $sql1);

            while ($row =  mysqli_fetch_row($result)) {
                echo $row[0];
            }
*/
            ?>
        </div>
        <div id="aside">
            <h3>Najnowsze filmy rumunskie</h3>
        </div>
    </main>
    <footer>
    &copy;
    </footer>
</body>

</html>