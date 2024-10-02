import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tugas/presentation/data/isiPenugasan.dart';
import 'package:tugas/presentation/home_screen/home_screen1.dart';

class EditPage extends StatefulWidget {
  final int id;

  final String Isi;
  final String Judul;
  const EditPage(
      {super.key, required this.Isi, required this.Judul, required this.id});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController _judul;
  late TextEditingController _isi;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _judul = TextEditingController(text: widget.Judul);
    _isi = TextEditingController(text: widget.Isi);
  }

  void berhasil(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tugas Diperbarui'),
          content: Text('Tugas berhasil diperbarui.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => HomeScreen1())),
                );
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
                  hintText: IsiPenugasan.daftarIsiPenugasan
                      .where(
                          (IsiPenugasan penugasan) => penugasan.id == widget.id)
                      .first
                      .Isi,
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
                    IsiPenugasan.updatejudul(widget.id, judul);
                    IsiPenugasan.updateisi(widget.id, isi);
                    berhasil(context);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Ubah Tugas',
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
