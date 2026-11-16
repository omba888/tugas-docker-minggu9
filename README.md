# Tugas Rumah Minggu 9: Kontainerisasi Halaman Profil dengan Docker

Repositori ini berisi proyek tugas rumah mata kuliah Teknologi Open Source untuk membungkus halaman profil statis (HTML) menjadi *image* Docker berbasis `nginx:alpine` dan menjalankannya sebagai *container*.

* **Nama:** Martinus Maun Omba
* **NIM:** 202557201019
* **Kelas:** A
* **Docker Hub:** https://hub.docker.com/r/omba888/profil-martinus

## Isi Repositori
* `Dockerfile`: Instruksi pembangunan *image* kustom berbasis Nginx Alpine.
* `index.html`: Halaman web profil pribadi.
* `README.md`: Dokumentasi cara *build*, *run*, dan bukti pengujian.
* `gambar1.png` - `gambar6.png`: Tangkapan layar proses pengerjaan dan pengujian.

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
docker system prune -f
docker ps -a
docker images
```

## Dokumentasi Hasil (6 Screenshot)
1. Halaman Profil di Browser (`localhost:8082`) 
   ![Halaman profil di localhost8082](<!%5BHalaman%20profil%20di%20localhost8082%5D(gambar1.png).png>)
   
2. Status Container Berjalan (`docker ps`)
   ![Hasil docker ps](<!%5BHasil%20docker%20ps%5D(gambar2.png.png).png>)
   
3. Hasil Build Image (`docker images`)
   ![Hasil docker images](<!%5BHasil%20docker%20images%5D(gambar3.png).png>)
   
4. Halaman Repositori GitHub (`tugas-docker-minggu9`)
![Halaman repositori GitHub](<!%5BHalaman%20repositori%20GitHub%5D(gambar4.png).png>)
   
5. Halaman Repositori Docker Hub (`omba888/profil-martinus`)
    
9. Hasil Pembersihan Sistem (`docker ps -a` dan `docker images` Kosong) 
