import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tugas/presentation/data/isiPenugasan.dart';
import 'package:tugas/presentation/home_screen/home_screen1.dart';

class InputTugas extends StatefulWidget {
  const InputTugas({super.key});

  @override
  State<InputTugas> createState() => _InputTugasState();
}

class _InputTugasState extends State<InputTugas> {
  final TextEditingController _judul = TextEditingController();
  final TextEditingController _isi = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void berhasil(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tugas Ditambahkan'),
          content: Text('Tugas berhasil ditambahkan.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen1()));
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen1()));
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: _judul,
                decoration: InputDecoration(
                  labelText: "Judul Tugas",
                  labelStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  hintText: 'Isi Judul',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Judul tugas tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                maxLines: 4,
                controller: _isi,
                decoration: InputDecoration(
                  labelText: "Tugas",
                  labelStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  hintText: 'Isi Tugas',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Judul tugas tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(49, 109, 134, 1)),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    String judul = _judul.text;
                    String isi = _isi.text;
                    IsiPenugasan.bikinTugas(judul, isi);
                    berhasil(context);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Tambah Tugas',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
