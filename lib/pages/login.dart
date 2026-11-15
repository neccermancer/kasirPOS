import 'package:flutter/material.dart';
import 'package:input/pages/mainpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final namaKasirController = TextEditingController();
  final kodKasirController = TextEditingController();

  @override
  void dispose() {
    namaKasirController.dispose();
    kodKasirController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            TextField(
              controller: namaKasirController,
              decoration: InputDecoration(hintText: 'Masukkan Nama Kasir'),
            ),

            TextField(
              controller: kodKasirController,
              decoration: InputDecoration(hintText: 'Masukkan Kode Kasir'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MainPage(
                      namaKasir: namaKasirController.text,
                      kodKasir: kodKasirController.text,
                    ),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
