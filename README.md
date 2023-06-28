# Table Of Content
- [Table Of Content](#table-of-content)
- [Pengenalan](#pengenalan)
  - [Dart](#dart)
  - [Flutter](#flutter)
  - [Instalasi](#instalasi)
  - [IDE](#ide)
- [DART](#dart-1)
  - [Asinkronus Pada Dart](#asinkronus-pada-dart)
- [Lab 1 (Create Flutter Prjek)](#lab-1-create-flutter-prjek)
  - [Membuat Projek Flutter](#membuat-projek-flutter)
  - [Main File](#main-file)
  - [Common Widget](#common-widget)
    - [Material App](#material-app)
    - [Scaffold](#scaffold)
- [Lab 2 (Widget)](#lab-2-widget)
  - [Container](#container)
  - [Column](#column)
  - [Row](#row)
  - [Expanded](#expanded)
  - [Praktek](#praktek)
- [Lab 3 (Widget Part 2)](#lab-3-widget-part-2)
  - [ListView](#listview)
  - [Text](#text)
  - [TextField](#textfield)
  - [ElevatedButton](#elevatedbutton)
  - [Card](#card)
  - [Praktek](#praktek-1)
# Pengenalan
## Dart
Merupakan bahasa pemrograman asynchronous berbasis OOP yang dapat digunakan untuk membuat aplikasi di segala platform

## Flutter
Sebuah framework yang digunakan pada bahasa pemrograman dart untuk membuat tampilan atau ui.

## Instalasi
Instalasi Flutter dapat dimulai dengan menginstall Android Studio seperti biasa lalu kemudian bisa ikuti langkah langkah instalasi pada dokumentasi instalasi flutter sebagai berikut [Dokumentasi Instalasi Flutter](https://docs.flutter.dev/get-started/install)

## IDE
Untuk IDE yang digunakan bisa menggunakan android studio langsung atau menggunakan IDE lain seperti Visual Studio Code. Dengan alasan tertentu penulis lebih suka menggunakan Visual Studio Code sehingga penulis menggunakan Visual Studio Code dengan menginstall ekstensi flutter pada Visual Studio Code

# DART
Pada dasarnya syntax dan fitur pada dart tidak jauh berbeda dengan bahasa pemrograman lain. jadi jika sudah pernah menggunakan bahasa OOP lain hanya perlu penyesuaian sedikit bahkan bahasa dart ini terbilang cukup lebih mudah
## Asinkronus Pada Dart
Dart mendukung proses asinkronus dimana dart dapat mengeksekusi tugas-tugas secara non-bloking (Mirip Seperti Javascript).

Pada kebanyakan bahasa pemrograman (PHP, Java, Golang, Python), menggunakan konsep blocking dimana jika ada Task 1 dan Task 2, Task 2 akan dijalankan setelah Task 1 benar-benar selesai di proses.

Sedangkan pada bahasa Asinkronus jika ada Task 1 dan Task 2, Task 2 akan dijalankan setelah Task 1 sudah dieksekusi (Tanpa perlu proses nya selesai, yang penting di eksekusi)

# Lab 1 (Create Flutter Prjek)
## Membuat Projek Flutter
Untuk menginisiasi projek flutter dapat menggunakan perintah berikut

```bash
flutter create lab1
```

Perintah tersebut akan membuat directory dengan nama lab1 dimana direktori tersebut adalah projek flutter kita

Inisiasi proyek juga dapat dilakukan menggunakan GUI Visual Studio Code seperti berikut

![Flutter Create Project](https://codelabs.developers.google.com/codelabs/flutter-codelab-first/img/58e8487afebfc1dd.gif)

![Flutter Create Project 2](https://codelabs.developers.google.com/static/codelabs/flutter-codelab-first/img/260a7d97f9678005_1920.png?hl=id)

## Main File
Flutter memiliki satu main file, dimana file tersebut yang akan dieksekusi saat aplikasi flutter dijalankan file tersebut terletak di `lib/main.dart`

## Common Widget
Semua yang ada pada UI Flutter merupakan sebuah Widget yang saling berkaitan
![Widget Tree](https://docs.flutter.dev/assets/images/docs/ui/layout/sample-flutter-layout.png)
### Material App
Widget yang digunakan sebagai titik awal dalam membangun aplikasi dengan desain Material. `MaterialApp` menyiapkan banyak konfigurasi dasar dan menyediakan struktur dasar yang diperlukan untuk mengembangkan aplikasi Flutter dengan tampilan Material Design.

### Scaffold
Dalam Flutter, Scaffold adalah widget yang digunakan sebagai kerangka dasar untuk membangun antarmuka aplikasi. Scaffold menyediakan struktur umum yang umumnya ditemukan dalam aplikasi, seperti AppBar, body, drawer, dan sebagainya

# Lab 2 (Widget)
Dalam Flutter memiliki beberapa widget untuk keperluan layouting sebagai berikut
## Container
Container Merupakan sebuah widget yang berfungsi sebagai wadah dari widget utama yang ingin ditampilkan (Button, Text, dll). Dikatakan sebuah wadah karena widget sering digunakan untuk mengatur padding, margin, background untuk widget dibawahnya berikut contoh untuk pemanggilan widget Container, dimana terlihat Widget Container sebagai widget parent dan child nya adalah widget Text
```dart
Container(
    color: Colors.red,
    padding: EdgeInsets.all(20),
    child: Text("Text Container 1"),
)
```

## Column
Column merupakan sebuah widget yang berfungsi juga sebagai wadah, bedanya dengan Container widget ini dapat memiliki lebih dari 1 Child yang nanti nya akan di render secara vertikal
```dart
Column(
    children: [
        Container(child: Text("Text1")),
        Container(child: Text("Text2"))
    ]
)
```
## Row
Column merupakan sebuah widget yang berfungsi juga sebagai wadah dan memiliki lebih dari 1 child bedanya dengan column widget didalam sini akan dirender secara horizontal
```dart
Row(
    children: [
        Container(child: Text("Text1")),
        Container(child: Text("Text2"))
    ]
)
```

## Expanded
Sebuah widget wadah dimana widget ini akan menggunakan semua ruang tersisa pada widget parent nya
```dart
Row(
    children: [
        Container(child: 
            Text("Text1")
        ),
        Expanded(
            child: Container(
                child: Text("Text2")
            )
        )
    ]
)
```
## Praktek
Pada projek `lab2` anda bisa melihat contoh penggunaan dan perpaduan widget diatas dengan beberapa tambahan widget lain

# Lab 3 (Widget Part 2)
Pada bagian ini akan menunjukan beberapa contoh widget lain yang umum digunakan

## ListView
Pada dasarnya ukuran halaman pada UI flutter akan mengikuti panjang dan lebar device nya, sehingga jika kita ingin membuat tampilan list yang sangat panjang kita memerlukan widget ini untuk dapat memanggunakan ukuran list yang panjang atau lebarnya melebihi ukuran device dan akan ditampilkan dalam bentuk scrolling

## Text
Widget untuk menampilkan sebuah text
```dart
const Text(
    "Catat\nPengeluaran",
    style: TextStyle(
        color: Color(0xFF141414),
        fontWeight: FontWeight.w700,
        fontSize: 35,
    ),
),
```

## TextField
Widget untuk membuat sebuah inputan text
```dart
TextField(
    cursorColor: Color(0xFF141414),
    decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(15),
            ),
            borderSide: BorderSide(
                color: Color(0xFF141414),
                width: 2.0,
            ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(15),
            ),
            borderSide: BorderSide(
                color: Color(0xFF141414),
                width: 2.0,
            ),
        ),
        labelText: 'Jumlah Pengeluaran',
        labelStyle: TextStyle(
            color: Color(0xFF141414),
        ),
    ),
)
```

## ElevatedButton
Widget untuk membuat sebuah button yang nantinya bisa menerima trigger `tap`
```dart
ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF141414),
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(10.0),
        ),
    ),
    onPressed: () {},
    child: const Text('Submit'),
)
```

## Card
```dart
Card(
    child: Text("tes")
)
```

## Praktek
Untuk praktek pada lab 3 akan membuat sebuah tampilan seperti berikut (Sudah disediakan template pada folder lab3 dan hasilnya ada di lab3_final)

<div style="display: flex;">
  <img src="images/lab_3_target.png" alt="Gambar 1" height="500">
  <img src="images/lab_3_target_2.png" alt="Gambar 2" height="500">
  <img src="images/lab_3_target_vid.gif" alt="Gambar 2" height="500">
</div>


