<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <title>Toko Laptop</title>
    <style>
        :root {
            --primary-color: #4A90E2;
            --secondary-color: #f5f5f5;
            --accent-color: #e74c3c;
            --font-color: #2c3e50;
            --btn-padding: 8px 16px;
            --border-radius: 10px;
        }

        body {
            background-color: var(--secondary-color);
            color: var(--font-color);
            font-family: 'Arial', sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        header {
            background-color: red
            ;
            color: white;
            padding: 2rem;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        main {
            flex: 1;
            padding: 30px;
        }

        h1, h2 {
            font-family: 'Segoe UI', sans-serif;
            font-weight: 700;
        }

        h2 {
            font-size: 1.8rem;
            background-color: white;
            padding: 1.2rem;
            border-radius: var(--border-radius);
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            color: var(--font-color);
        }

        table {
            background-color: white;
            border-radius: var(--border-radius);
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.05);
        }

        th, td {
            padding: 1rem;
            vertical-align: middle;
            text-align: center;
        }

        th {
            background-color: var(--primary-color);
            color: white;
        }

        img {
            border-radius: 8px;
            object-fit: cover;
        }

        .action-links a {
            padding: var(--btn-padding);
            text-decoration: none;
            color: white;
            font-size: 14px;
            margin: 2px;
            display: inline-block;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }

        .edit {
            background-color: #3498db;
        }

        .edit:hover {
            background-color: #2980b9;
        }

        .delete {
            background-color: var(--accent-color);
        }

        .delete:hover {
            background-color: #c0392b;
        }

        .mb-3 .btn {
            margin-right: 10px;
            font-size: 16px;
            padding: 10px 20px;
            transition: background-color 0.3s ease;
        }

        .btn-outline-dark:hover {
            background-color: var(--primary-color);
            color: white;
        }

        footer {
            background-color: #2c3e50;
            color: white;
            padding: 1.5rem;
            text-align: center;
            font-size: 0.9rem;
            margin-top: auto;
        }

        .btn-logout {
            font-size: 16px;
            padding: var(--btn-padding);
            transition: background-color 0.3s ease;
        }

        .btn-logout:hover {
            background-color: var(--accent-color);
        }
    </style>
</head>

<body>

    <header>
        <h1>Toko </h1>
    </header>

    <main class="container my-5">
        <h2>Daftar Laptop</h2>

        <table id="pengaduanTable" class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Nama</th>
                    <th>Deskripsi</th>
                    <th>Harga</th>
                    <th>Stok</th>
                    <th>Foto</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($data['produk'] as $row) : ?>
                <tr>
                    <td><?= $row['nama'] ?></td>
                    <td><?= $row['deskripsi'] ?></td>
                    <td><?= $row['harga'] ?></td>
                    <td><?= $row['stok'] ?></td>
                    <td><img height="100px" width="100px" src="<?=BASEURL?>/img/<?=$row['gambar']?>" alt="Foto Produk"></td>
                    <td class="action-links">
                        <a href="<?= BASEURL ?>/produk/show/<?= $row['id'] ?>" class="btn edit">Ubah</a>
                        <a href="<?= BASEURL ?>/produk/delete/<?= $row['id'] ?>" class="btn delete"
                            onclick="return confirm('Yakin ingin menghapus data ini?')">Hapus</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <div class="mb-3">
            <a href="<?= BASEURL;?>/produk/create" class="btn btn-primary btn-lg shadow-sm">
                <i class="bi bi-plus-circle"></i> Tambah Laptop
            </a>
            <a href="<?= BASEURL;?>/produk/sale" class="btn btn-outline-dark btn-lg shadow-sm">
                <i class="bi bi-bar-chart-fill"></i> Hasil Penjualan
            </a>
        </div>

        <a href="<?= BASEURL;?>/auth/logout" class="btn btn-danger btn-logout">Logout</a>
    </main>

    <footer>
        <p>&copy; 2024 Toko Laptop. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#pengaduanTable').DataTable();
        });
    </script>

</body>

</html>
