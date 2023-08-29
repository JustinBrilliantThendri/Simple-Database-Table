<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Database Table</title>
    <style>
        *{
            font-family : calibri;
        }
        body{
            display : grid;
            place-items : center;
        }
        table, tr, td, th{
            border : 1px solid black;
            border-collapse : collapse;
        }
        td, th{
            padding : 10px;
        }
    </style>
</head>
<body>
    <?php 
        require "get-values.php";
        $values = get_values();
    ?>
    <form method="get">
        <button type="submit" name="order-by" value="nis">NIS</button>
        <button type="submit" name="order-by" value="nama">Nama</button>
        <br><br>
        <table>
            <tr>
                <th>NIS</th>
                <th>Nama</th>
                <th>Jenis Kelamin</th>
                <th>No. HP</th>
                <th>Alamat</th>
            </tr>
            <?php foreach($values as $value): ?>
                <tr>
                    <td><?= $value["nis"] ?></td>
                    <td><?= $value["nama"] ?></td>
                    <td><?= $value["jenis_kelamin"] ?></td>
                    <td><?= $value["no_hp"] ?></td>
                    <td><?= $value["alamat"] ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </form>
</body>
</html>