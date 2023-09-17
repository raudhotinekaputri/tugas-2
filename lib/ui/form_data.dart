import 'package:flutter/material.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final namaController = TextEditingController();
  final nimController = TextEditingController();
  final tahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ListView(
            children: [
              _inputNama(),
              _inputNim(),
              _inputTahunLahir(),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _inputNama() {
    return TextField(
      controller: namaController,
      decoration: const InputDecoration(labelText: "Nama Anda"),
    );
  }

  _inputNim() {
    return TextField(
      controller: nimController,
      decoration: const InputDecoration(labelText: "NIM Anda"),
    );
  }

  _inputTahunLahir() {
    return TextField(
      controller: tahunLahirController,
      decoration: const InputDecoration(labelText: "Tahun Lahir Anda"),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = namaController.text;
        String nim = nimController.text;
        int tahunLahir = int.parse(tahunLahirController.text);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TampilData(
              nama: nama,
              nim: nim,
              tahunLahir: tahunLahir,
            ),
          ),
        );
      },
      child: const Text("Simpan"),
    );
  }
}