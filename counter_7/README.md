

#Tugas 8

 Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
 Navigator.push (): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
 Navigator.pushReplacement: mengantikan halaman sebelumnya dengan halaman baru.
 
 Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
   1. Row = menampilakan tampilan horizontal pada children
   2. Container = widget yang digunakan untuk membungkus widget lain 
   3. Scaffold = widget yang digunakan untuk membuat halamat di flutter
   4. Appbar = menampilkan toolbar di flutter.
   5. Center, memposisikan widget child di tengah
   6. Column, memposisikan widget chlidren secara vertikal
   7. Drawer, panel untuk navigasi
   8. Text, menampilkan sebuah string
   9. TextFormField, input form berupa string
   10.Form, membuat form
 
 Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
  onPressed(), execute suatu fungsi ketika mengklik sebuah button
  onTap(), execute suatu fungsi ketika mengklik sebuah widget satu kali
  onChanged(), execute suatu fungsi ketika merubah suatu value pada sebuah widget
  onSaved(), execute suatu fungsi ketika menyimpan sebuah form
  
 Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Logic navigasi pada flutter bekerja seperti sebuah stack. Stack tersebut juga menyimpan data, bedanya data yang disimpan berupa halaman. Data pada top of stack adalah halaman yang muncul kepada pengguna. Metode push akan menjalankan logic mengganti halaman dengan menambahkan halaman baru pada top of stack sehingga halaman sebelumnya ditimpa (Navigator.push) atau digantikan (Navigator.pushReplacement) dan halaman baru tersebut yang muncul di layar pengguna. Metode pop kebalikannya akan top of stack dan menampilkan halaman sebelumnya kepada pengguna
 
 Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 Buka folder aplikasi flutter counter_7 yang telah dikerjakan pada tugas 7
 Membuat file drawer.dart
 Membuat file budget.dart 
 Membuat file form.dart 
 Membuat file data.dart 

#Tugas 7
Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Statelss widget adalah widget yang tidak dapat berubah-ubah atau statis sedangkan statefull widget adalah jenis widget yang dapat berubah-ubah atau dinamis

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 1. Row = menampilakan tampilan horizontal pada children
 2. Container = widget yang digunakan untuk membungkus widget lain 
 3. Scaffold = widget yang digunakan untuk membuat halamat di flutter
 4. Appbar = menampilkan toolbar di flutter

Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() digunakan merencanakan suatu pembaruan ke dalam state objek komponen yang nantinya waktu state berubah maka komponen akan merespon dengan me-render ulang. Variabel yang dapat terpengaruh dari fungsi tersebut adalah variabel yang diganti pada fungsi tersebut.

Jelaskan perbedaan antara const dengan final.
variabel dari final tidak dapat diubah di masa yang akan datang dan sudah terfiksasi sedangkan final sama seperti const tetapi perbedaannya const membuat variabel konstan hanya di compile-time  

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
    1. membuat app bernama counter_7
    2. menambah tombol + dan - yang berfungsi untuk menambah dan menghurangkan angka yang ada di display
    3. menampilkan angka di display
    4. menampilkan jenis bilangan genap atau ganjil berdasarkan bilangan yang muncul
    5. apabila angka mencapai 0 maka tidak dapat dilakukan decrement lagi.
    6. menghilangkan tombol decrement apabila angka mencapai 0
