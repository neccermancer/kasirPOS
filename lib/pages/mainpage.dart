import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.namaKasir, required this.kodKasir});

  final String namaKasir;
  final String kodKasir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Utama'), centerTitle: true),
      body: Center(
        child: Column(
          spacing: 12,
          children: [
            SizedBox(height: 20),
            Text('SELAMAT DATANG, $namaKasir ($kodKasir)'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
