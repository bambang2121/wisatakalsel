import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WisataIndonesia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/list': (context) => ListPage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Hardcoded credentials
    const String correctUsername = 'bbg21';
    const String correctPassword = '2121';

    if (_usernameController.text == correctUsername &&
        _passwordController.text == correctPassword) {
      // Navigate to ListPage if credentials are correct
      Navigator.pushNamed(context, '/list');
    } else {
      // Show an error message if credentials are incorrect
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Login Gagal'),
            content: Text('Username dan/atau Password Anda Salah.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WISATA KALSEL'),

            SizedBox(height: 10),
            Image.asset('assets/logo.png', height: 100), // Add a logo
            SizedBox(height: 50), // Add space between logo and username field
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
                height: 10), // Add space between username and password field
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20), // Add space between password and button
            ElevatedButton(
              onPressed: _login, // Call the login function
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  final List<String> titles = [
    'Taman Maskot Bekantan Destinasi Ikonik di Banjarmasin',
    'Wisata Religi di Tanbu, Masjid Apung Ziyadatul Abrar',
    'RTH Tanjung Bersinar Park, Dekat dengan Tanjung Expo Center dan Pusat Kuliner',
  ];

  final List<String> authors = [
    'Arif',
    'Zainudin',
    'Affan',
  ];

  final List<String> images = [
    'assets/berita1.png',
    'assets/berita2.png', // Add your second image
    'assets/berita3.png', // Add your third image
  ];

  final List<String> details = [
    'Kawasan siring yang ada di Jalan Piere Tendean, bisa dibilang merupakan salah satu destinasi wisata andalan di Kota Banjarmasin.Beberapa spot menarik pun bisa ditemui di sepanjang kawasan siring di Jalan Piere Tendean ini. Terlebih di lokasi ini terdapat destinasi wisata yang terbilang sangatlah ikonik yakni Taman Maskot Bekantan. Sesuai dengan namanya, di tempat ini terdapat sebuah patung raksasa salah satu jenis primata di Kalsel yakni bekantan. Patung bakantan ini dibangun dengan tinggi mencapai enam meter, dan bentuknya menyerupai bentuk asli dari primata yang memiliki nama latin Nasalis Larvatus ini. Tangan sebelah kanan patung bakantan dibuat seolah sedang menggaruk kepala, sedangkan tangan kirinya memegang buah rambai yang menjadi makanan favoritnya. Mulut patung bakantan dibuat menganga dan menghadap langsung ke Sungai Martapura yang membelah Kota Banjarmasin. Layaknya patung Merlion yang menjadi ikon wisata Singapura, dari mulut patung primata yang dikenal pemalu ini pun juga bisa mengeluarkan air mancur.', // Detail for the first item
    'Masjid yang diberi nama Masjid Apung Ziyadatul Abrar ini merupakan masjid pertama di Kalimantan dan ketiga di Indonesia yang berlokasi di pinggiran pantai. Berlokasi di Pantai Siring Pantai Pagatan, Kabupaten Tanah Bumbu, Kalimantan Selatan, Masjid ini merupakan bentuk Persembahan CSR PT Borneo Indobara Untuk Masyarakat Tanah Bumbu. Berdasarkan prasasti yang  terletak di tangga utama pintu masjid  ini, nama Ziyadatul Abrar sendiri memiliki arti tempat yang penuh kebajikan. Harapannya, nama ini dapat membawa berkah bagi peningkatan kualitas peribadatan masyarakat dan dapat menjadi salah satu ikon wisata religi Kabupaten Tanah Bumbu Kalimantan Selatan. Selain dari nama,  seluruh desain masjid serta warnanya memiliki filosofi tersendiri.Warna emas yang mendominasi masjid memiliki arti kebaikan yang abadi, dan warna hijau untuk harmoni dan keseimbangan. Harapannya simbol warna tersebut dapat membawa kebaikan dan keharmonisan yang abadi bagi Masyarakat Kabupaten Tanah Bumbu.', // Detail for the second item
    'Lokasi Ruang Terbuka Hijau (RTH) Tanjung Bersinar Park di Mabuun, Kecamatan Murung Pudak, Kabupaten Tabalong, terbilang strategis. Bila berkunjung ke Tanjung Bersinar Park ini maka juga akan bisa mendatangi beberapa fasilitas publik lainnya dalam waktu singkat. Pasalnya di sekitaran lokasi Tanjung Bersinar Park ini ada fasilitas area Tanjung Expo Center, Pusat Kuliner, Pasar Mabuun dan lokasi pedagang jajanan. Tanjung Expo Center berada persis di sebelah kanannya yang hanya dipisahkan satu ruas jalan umum.Di bagian sisi ruas jalan tersebut, tepatnya yang berada di dekat trotoar samping Tanjung Expo Center terdapat deretan pedagang kaki lima yang menjual berbagai jajanan. Di dalam area Tanjung Expo Center, apabila tidak ada event yang digelar, maka diisi jasa wahana permainan anak. Sedangkan apabila ke arah belakang Tanjung Bersinar Park akan ada pasar mingguan dari Jumat sampai Sabtu dan juga pasat harian. Di seberang pasar harian ini adalah lokasi Pusat Kuliner yang menyediakan warung makan sate, kuliner khas paliat, pizza dan lainnya.', // Detail for the third item
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Navigasi ke halaman Home
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(images[index], width: 50),
              title: Text(titles[index]),
              subtitle: Text('Dibuat Oleh : ' + authors[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: titles[index],
                      image: images[index],
                      detail: details[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.navigation),
            label: 'Kembali',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.search),
            label: 'Pencarian',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.chat),
            label: 'Obrolan',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
        ],
        onTap: (index) {
          // Handle navigation based on the index
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String detail;

  DetailPage({required this.title, required this.image, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Wisata'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        // Enable scrolling for long content
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding around the content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Center(
                child: Image.asset(image, height: 200, fit: BoxFit.cover),
              ),
              SizedBox(height: 16), // Space between image and title

              // Title
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16), // Space between title and detail text

              // Detail text
              Text(
                detail,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5, // Line height for better readability
                ),
                textAlign:
                    TextAlign.justify, // Justify text for better alignment
              ),
              SizedBox(height: 20), // Space before the button

              // Back button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
