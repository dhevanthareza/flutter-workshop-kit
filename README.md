# Table Of Content
- [Table Of Content](#table-of-content)
- [Pengenalan](#pengenalan)
  - [Dart](#dart)
  - [Flutter](#flutter)
  - [Instalasi](#instalasi)
  - [IDE](#ide)
- [DART](#dart-1)
  - [Asinkronus Pada Dart](#asinkronus-pada-dart)
- [Lab 1 (Create Flutter Projek)](#lab-1-create-flutter-projek)
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
- [Lab 4 (Stateless and Statefull Widget)](#lab-4-stateless-and-statefull-widget)
  - [Praktek](#praktek-2)
    - [Interaksi](#interaksi)
    - [Code Splitting](#code-splitting)
- [Lab 5 (Navigation)](#lab-5-navigation)
  - [Menggunakan Navigator](#menggunakan-navigator)
  - [Menggunakan Named Route](#menggunakan-named-route)
- [Lab 6 (Persistent Local Storage)](#lab-6-persistent-local-storage)
- [LAB 7 (REST API PART 1 - Authentication)](#lab-7-rest-api-part-1---authentication)
- [Lab 8 (REST API PART 2 - CRUD)](#lab-8-rest-api-part-2---crud)
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

# Lab 1 (Create Flutter Projek)
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
Semua yang ada pada UI Flutter merupakan sebuah Widget yang saling berkaitan, bahkan saat kita membuat sebuah halaman atau tampilan itu juga akan menjadi widget

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
Row merupakan sebuah widget yang berfungsi juga sebagai wadah dan memiliki lebih dari 1 child bedanya dengan column widget didalam sini akan dirender secara horizontal
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
![lab2 target](images/lab2_target.png)
# Lab 3 (Widget Part 2)
Pada bagian ini akan menunjukan beberapa contoh widget lain yang umum digunakan dan salah cara merender widget dengan menggunakan konsep looping

## ListView
Pada dasarnya ukuran halaman pada UI flutter akan mengikuti panjang dan lebar device nya, sehingga jika kita ingin membuat tampilan list yang sangat panjang kita memerlukan widget ini untuk dapat memanggunakan ukuran list yang panjang atau lebarnya melebihi ukuran device dan akan ditampilkan dalam bentuk scrolling
```dart
ListView(
    children: [
        Text("1"),
        Text("2"),
        Text("3"),
        Text("4"),
        Text("5"),
    ]
)
```

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

# Lab 4 (Stateless and Statefull Widget)
Pada dasar nya Widget pada flutter ada 2 jenis, Stateless dan Statefull widget, sesuai namanya perbedaan keduanya ada pada ada atau tidak nya state/keadaan pada widget tersebut.

Stateless Widget adalah widget yang state/keadaan nya selalu tetap dan tidak berubah-ubah semenjak di inisiasi, jenis widget ini biasa digunakan untuk widget-widget kecil yang dibuat untuk di panggil di tempat lain sebagai reusable widget/component, contohnya jika kita membuat custom form yang akan kita gunakan berkali-kali di berbagai tempat kita akan menggunakan stateless widget untuk membuat widget/komponen tersebut.

Statefull Widget adalah widget yang state/keadaan nya dapat berubah ubah semenjak di inisiasi, jenis widget ini biasa digunakan untuk membuat halaman yang memiliki interaksi yang merubah state/keadaan halaman tersebut. contohnya jika kita membuat halaman kalkulator tentunya akan ada interaksi di halaman tersebut yang merubah keaadaan pada halaman tersebut

## Praktek
Praktek disini akan terdiri dari beberapa tahap

### Interaksi
Pada praktek ini akan menggunakan projek `lab4` sebagai template dan hasil dari praktek ini sudah ada di projek `lab4_interaksi`. Goal dari praktik ini adalah menerima inputan user dan menambahkan nya ke list yang sudah ada. Berikut hasilnya

<img src="images/lab_4_interaksi.gif" alt="Gambar 1" height="500">



### Code Splitting
Pada praktek ini akan menggunakan projek `lab4_interaksi` sebgai template dan hasil dari praktek ini sudah ada di projek `lab4_final`. Goal dari praktik ini adalah membagi bagi code yang panjang menjadi beberapa bagian dan memanggilanya


# Lab 5 (Navigation)
Pada lab ini akan mempelajari bagaimana melakukan navigasi pada flutter, pada folder lab5 sudah disiapkan projek yang sudah disiapkan 5 screen sebagai berikut tetapi belum ada navigasi antar screen tersebut
<div style="display: flex;flex-wrap: wrap;">
  <img src="images/splash.png" alt="Gambar 1" height="400">
  <img src="images/signup_page.png" alt="Gambar 2" height="400">
  <img src="images/login_page.png" alt="Gambar 2" height="400">
  <img src="images/home_page.png" alt="Gambar 2" height="400">
  <img src="images/expense_detail.png" alt="Gambar 2" height="400">
</div>

Pada umumnya pada Flutter memiliki 3 cara navigasi yaitu
1. Menggunakan Navigator
2. Menggunakan Named Routes
3. Menggunakan Third Party Libraries yang berfungsi sebagai route management (Bisanya jika butuh fitur lebih)

## Menggunakan Navigator
berikut contoh untuk berpindah ke halaman `LoginPage` menggunakan Navigator, anda bisa menggunakan script dibawah pada trigger `onTap` atau lainya
```dart
Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ),
);
```
Jika kamu ingin membawa sebuah data ke `screen selanjutnya` anda bisa mengkonfigurasi Screen tujuan untuk menerima parameter seperti berikut
```dart
class ExpenseDetailPage extends StatelessWidget {
  final String amount;
  final String description;
  const ExpenseDetailPage({
    super.key,
    required this.amount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [Text(amount), Text(description)]
      )
    );
  }
}
```
diatas adalah contoh jika `screen selanjutnya` merupakan stateless widget,berikut jika `screen selanjutnya` merupakan statefull widget
```dart
import 'package:flutter/material.dart';

class ExpenseDetailPage extends StatefulWidget {
  final String amount;
  final String description;
  const ExpenseDetailPage({
    super.key,
    required this.amount,
    required this.description,
  });

  @override
  State<ExpenseDetailPage> createState() => _ExpenseDetailPageState();
}

class _ExpenseDetailPageState extends State<ExpenseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(children: [Text(widget.amount), Text(widget.description)])
    );
  }
}
```

Lalu anda  bisa berpindah halaman dengan kode berikut
```dart
Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const ExpenseDetailPage(amount: "5000", description: "Lorem Ipsum Dolor Sit Amet"),
    ),
);
```

## Menggunakan Named Route
Named route merupakan metode navigasi menggunakan nama route dalam bentuk strings untuk berpindah pindah halaman, untuk menggunakan named route kita perlu menndefinisika nama route dan kelas screen nya untuk tiap route pada MaterialApp seperti berikut
```dart
MaterialApp(
  title: 'Expense Tracker',
  initialRoute: '/',
  routes: {
    '/': (context) => SplashPage(),
    '/home': (context) => HomePage(),
    '/login': (context) => LoginPage(),
    '/signup': (context) => SignupPage(),
    '/detail': (context) => ExpenseDetailPage()
  },
);
```
Lalu kita dapat berpindah halaman menggunakan kode berikut
```dart
Navigator.pushNamed(context, '/signup');
```

# Lab 6 (Persistent Local Storage)
Local Storaga merupakan sebuah tempat penyimpanan persistent yang disimpan pada disk device, pada flutter untuk mengakses jenis penyimpanan ini bisa menggunakan berbagai library third party seperti shared_preferences, get_storage, localstorage, sqflite.

Penggunaan library-libray tersebut tergantung kebutuhan, semua library yang saya sebutkan sebelumnya kecuali sqflite dapat menyimpan data dalam bentuk key-value.

Penggunaan key-value yang disimpan pada persistent storage di local paling sering digunakan untuk menyimpan data autentikasi user. dan pada Lab 6 ini akan mencoba menerapkan kasus tersebut.

Pada praktek ini akan menggunakan template yang ada di folder lab6 dan hasil final akan ada di lab6_final. pada lab ini akan mempraktikkan penyimpanan email ke SharedPreferences

Contoh Penggunaan shared preferences :

1. Menyimpan data (menyimpan data dengan key `email` dan value `dhevanthareza@gmail.com`)
```dart
final storage = await SharedPreferences.getInstance();
storage.setString("email", "dhevanthareza@gmail.com");
```

2. Mengambil data (mengambil data dari key `email`)
```dart
final storage = await SharedPreferences.getInstance();
String _userEmail = storage.getString("email") ?? "-";
```
3. Menghapus data (menghapus data dari key `email`)
```dart
final storage = await SharedPreferences.getInstance();
storage.remove("email");
```

# LAB 7 (REST API PART 1 - Authentication)
Pada lab ini akan mempraktikkan proses terkoneksi dengan api dan di implementasikan untuk proses registrasi dan proses login. 

API (Application Programming Interface) merupakan sebuah interface yang digunakan agar sebuah aplikasi dapat berkomunikasi dengan aplikasi lain. Interface nya pun bermacam-macam seperti REST, SOCKET, GRPC dll

Pada lab ini akan menggunakan interface REST untuk berkomunikasi dengan aplikasi server side yang terhubung langsung ke database.

Untuk dapat terkoneksi dengan aplikasi server side menggunakan interface REST kita membutuhkan Http Client. pada flutter sudah ada beberapa library untuk Http Client seperti http,retrofit,dio, dll

You can setup the api on
```
https://github.com/dhevanthareza/expense-api
```

Pada praktik ini akan menggunkan library dio untuk terkoneksi dengan http client.

1. Instalasi Dio
   ```dart
   dart pub add dio
   ```
2. Menyiapkan Intance Dio, sebenarnya untuk menggunakan dio kita tidak perlu membuat instance, pembuatan instance diperlukan untuk mendefinisikan Base Url agar tidak perlu di definisikan berulang-ulang. Selain Base Url juga dapat membuat opsi opsi lain. Pada lab 8 juga membuat beberapa fungsi khusus untuk handle kejadian kejadian tertentu agar kita tidak perlu melakukan handling berkali-kalo. Berikut instance Dio yang dibuat
   ```dart
    class RestClient {
      static final client = () async {
        var dio = Dio(
          BaseOptions(
            followRedirects: true,
            headers: {"Accept": "application/json"},
            connectTimeout: Duration(seconds: 20),
            receiveTimeout: Duration(seconds: 20),
            baseUrl: "http://192.168.41.132:4001",
          ),
        );
        dio.interceptors.add(PrettyDioLogger());
        final storage = await SharedPreferences.getInstance();
        String? accessToken = storage.getString("accessToken");
        if (accessToken != null) {
          dio.options.headers['Authorization'] = "Bearer $accessToken";
        }
        return dio;
      };

      static dynamic _returnResponse(Response? response) {
        if (response == null) {
          throw Exception('Tidak dapat terkoneksi dengan API');
        }
        return _handleResponse(response);
      }

      static dynamic _returnErr(DioException err) {
        print(err);
        Response? response = err.response;
        if (response == null) {
          throw Exception(err.message ?? "HTTP ERROR");
        }
        return _handleResponse(response);
      }

      static _handleResponse(Response response) {
        if (response.statusCode == 200) {
          var responseJson = response.data;
          return responseJson;
        }
        throw Exception(
          response.data != null ? response.data['message'] : 'Undefined Error',
        );
      }

      static Future<dynamic> get(String url,
          {Map<String, dynamic>? queryParameter}) async {
        dynamic responseJson;
        try {
          Dio _client = await client();
          dynamic response =
              await _client.get(url, queryParameters: queryParameter);
          responseJson = _returnResponse(response);
          return responseJson;
        } on SocketException {
          throw Exception('No Internet connection');
        } on DioException catch (err) {
          responseJson = _returnErr(err);
        }
        return responseJson;
      }

      static Future<dynamic> post(String url, {dynamic data}) async {
        dynamic responseJson;
        Response response;
        try {
          Dio _client = await client();
          response = await _client.post(url, data: data);
          responseJson = _returnResponse(response);
        } on SocketException {
          throw Exception('No Internet connection');
        } on DioException catch (err) {
          responseJson = _returnErr(err);
        }
        return responseJson;
      }

      static Future<dynamic> patch(String url, {dynamic data}) async {
        dynamic responseJson;
        Response response;
        try {
          Dio _client = await client();
          response = await _client.patch(url, data: data);
          responseJson = _returnResponse(response);
          return responseJson;
        } on SocketException {
          throw Exception('No Internet connection');
        } on DioException catch (err) {
          responseJson = _returnErr(err);
        }
        return responseJson;
      }

      static Future<dynamic> delete(String url, {dynamic data}) async {
        dynamic responseJson;
        Response response;
        try {
          Dio _client = await client();
          response = await _client.delete(url, data: data);
          responseJson = _returnResponse(response);
          return responseJson;
        } on SocketException {
          throw Exception('No Internet connection');
        } on DioException catch (err) {
          responseJson = _returnErr(err);
        }
        return responseJson;
      }
    }

   ```
3. Berikut contoh penggunaan dari instance dio diatas
   ```dart
    await RestClient.get('/expense');
   ```
   ```dart
    await RestClient.post('/expense', data: {"description": "description", "amount": "amount"});
   ```
   ```dart
    await RestClient.patch('/expense/1', data: {"description": "description", "amount": "amount"});
   ```
   ```dart
    await RestClient.delete('/expense/1');
   ```


# Lab 8 (REST API PART 2 - CRUD)
Pada lab ini akan mempraktikan proses CRUD yang langsung terkoneksi dengan Aplikasi Server Side menggunakan Http Client Dio. Hasil dari lab ini bisa anda lihat pada lab8_final
