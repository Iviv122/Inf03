<?php
$conn = mysqli_connect("127.0.0.1", "root", 'db', "filmy");
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
        <img src="./camera.png">
    </header>
    <div id="container">
        <main>
            <?php
            include "film.php";
            ?>
            <h2>Tytul i rok</h2>
            <i>Rummunski</i>
            <b>Gotunki</b>
            <b>Srednia lub brak</b>
            <h3>Galeria</h3>

            <div>
                <img src="camera.png" alt="Asd" class="mini">
            </div>
            <hr>
            <div class="big-parent">
                <img src="camera.png" class="big">
            </div>
        </main>
        <aside>
            
            <h3>Najnowsze filmy rumunskie</h3>
            <p>asdasd &gt;</p>
            <h3>TOP 5 kategorii</h3>
            <ul>
                <li>asd srednia ocena</li>
            </ul>
        </aside>
    </div>
    <footer>
        &copy;
    </footer>
</body>
</html>
<?php
    mysqli_close($conn);
?>