# Tugas Rumah Minggu 9: Kontainerisasi Halaman Profil dengan Docker

Repositori ini berisi proyek tugas rumah mata kuliah Teknologi Open Source untuk membungkus halaman profil statis (HTML) menjadi *image* Docker berbasis `nginx:alpine` dan menjalankannya sebagai *container*.

* **Nama:**  Martinus Maun Omba
* **NIM:**   202557201019
* **Kelas:** A
* **Docker Hub:** https://docker.com

## Isi Repositori
* `Dockerfile`: Instruksi pembangunan *image* kustom berbasis Nginx Alpine.
* `index.html`: Halaman web profil pribadi.
* `README.md`: Dokumentasi cara *build*, *run*, dan bukti pengujian.
* `screenshot.png`: Tangkapan layar halaman profil yang berjalan di `localhost:8082`.

## Cara Build Image
```bash
docker build -t profil-martinus:1.0 .
```

## Cara Menjalankan Container
```bash
docker run -d --name profil-martinus -p 8082:80 profil-martinus:1.0
```
Buka browser dan akses alamat `http://localhost:8082`.

## Cara Menghentikan dan Membersihkan (Cleanup)
```bash
docker stop profil-martinus
docker rm profil-martinus
docker rmi profil-martinus:1.0 omba888/profil-martinus:1.0 nginx:alpine
```

## Screenshot Hasil
![Halaman profil di localhost:8082](screenshot.png)
