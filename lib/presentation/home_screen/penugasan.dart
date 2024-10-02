import 'package:flutter/material.dart';
import 'package:tugas/presentation/data/isiPenugasan.dart';
import 'package:tugas/presentation/penugasan/edit_page.dart';
import 'package:tugas/presentation/penugasan/input_tugas.dart';
import 'package:tugas/presentation/penugasan/penugasanisi.dart';

class Penugasan extends StatefulWidget {
  const Penugasan({Key? key}) : super(key: key);

  @override
  _PenugasanState createState() => _PenugasanState();
}

class _PenugasanState extends State<Penugasan> {
  void deleteTask(int id) {
    setState(() {
      IsiPenugasan.daftarIsiPenugasan.removeWhere(
        (IsiPenugasan tugas) => tugas.id == id,
      );
    });
  }

  void hapus(int id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Hapus'),
          content: Text('Apakah Anda yakin ingin menghapus tugas ini?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                deleteTask(id);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Tugas dihapus'),
                    duration: Duration(seconds: 2),
                  ),
                );
                Navigator.of(context).pop();
              },
              child: Text('Hapus'),
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
      body: ListView.builder(
        itemCount: IsiPenugasan.daftarIsiPenugasan.length,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onDoubleTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditPage(
                  id: IsiPenugasan.daftarIsiPenugasan[index].id,
                  Isi: IsiPenugasan.daftarIsiPenugasan[index].Isi,
                  Judul: IsiPenugasan.daftarIsiPenugasan[index].Judul,
                ),
              ));
            },
            onLongPress: () {
              hapus(IsiPenugasan.daftarIsiPenugasan[index].id);
            },
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PenugasanIsi(
                  Isi: IsiPenugasan.daftarIsiPenugasan[index].Isi,
                  Judul: IsiPenugasan.daftarIsiPenugasan[index].Judul,
                ),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 50,
                decoration: BoxDecoration(),
                child: Text(
                  IsiPenugasan.daftarIsiPenugasan[index].Judul,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromRGBO(49, 109, 134, 1),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => InputTugas()),
            (route) => false,
          );
        },
        label: Icon(Icons.add),
      ),
    );
  }
}
