import 'package:flutter/material.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Data"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: InputDecoration(
                labelText: "Nama",
              ),
            ),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(
                labelText: "NIM",
              ),
            ),
            TextField(
              controller: _tahunLahirController,
              decoration: InputDecoration(
                labelText: "Tahun Lahir",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //kirim data ke file TampilData
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TampilData(
                      data: _namaController.text +
                          ', NIM: ' +
                          _nimController.text +
                          ', Tahun Lahir: ' +
                          _tahunLahirController.text,
                    ),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
