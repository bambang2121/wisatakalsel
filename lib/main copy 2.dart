import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coba Coba'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Input:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text',
              ),
              onChanged: (text) {
                setState(() {
                  _inputText = text;
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Label:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              _inputText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Lakukan sesuatu ketika tombol ditekan
                // Misalnya, tampilkan pesan di konsol
                print('Button Pressed!');
              },
              child: Text('Coba Tekan'),
            ),
          ],
        ),
      ),
    );
  }
}
