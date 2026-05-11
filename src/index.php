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

            <div class="big-parent">
                <img src="camera.png" class="big" id="big">
            </div>
        </main>
        <aside>
            <?php
            include "filmyKategorie.php";
            ?>
        </aside>
    </div>
    <footer>
        &copy;2026 Ivan Skrynnik
    </footer>
    <script src="./script.js"></script>
</body>
</html>
<?php
    mysqli_close($conn);
?>