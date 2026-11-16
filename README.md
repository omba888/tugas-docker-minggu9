# Tugas Docker Minggu 9 - Kontainerisasi Halaman Profil

**Nama:** Martinus Maun Omba  
**NIM:** 202557201019  
**Kelas:** A  

## Cara Build Image
`docker build -t profil-martinus:1.0 .`

## Cara Menjalankan Container
`docker run -d --name profil-martinus -p 8082:80 profil-martinus:1.0`

Akses halaman profil melalui browser di `http://localhost:8082`.
