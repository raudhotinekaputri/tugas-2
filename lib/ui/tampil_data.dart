import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahunLahir;

  const TampilData(
      {Key? key,
      required this.nama,
      required this.nim,
      required this.tahunLahir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ListView(
            children: [
              Text("Assalamu'alaikum, nama saya $nama."),
              Text("dengan $nim."),
              Text("dan saya berumur ${(DateTime.now().year - tahunLahir).toString()} tahun.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}