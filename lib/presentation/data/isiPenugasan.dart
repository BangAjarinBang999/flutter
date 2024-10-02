class IsiPenugasan {
  int id;
  String Judul;
  String Isi;

  IsiPenugasan({required this.id, required this.Isi, required this.Judul});

  static List<IsiPenugasan> daftarIsiPenugasan = [
    IsiPenugasan(
      id: 1,
      Judul: "Tugas 1",
      Isi:
          "Dalam sebuah kandang ada 50 ekor ayam. Yang terdiri atas 27 ekor ayam jantan, dan 18 ekor ayam berwarna hitam. Apabila yang berwarna hitam di kandang itu ada 35 ekor maka berapakah banyaknya ayam betina yang tidak berwarna hitam? ",
    ),
    IsiPenugasan(id: 2, Judul: "Tugas 2", Isi: "isi 2"),
    IsiPenugasan(id: 3, Judul: "Tugas 3", Isi: "isi 3"),
    IsiPenugasan(id: 4, Judul: "Tugas 4", Isi: "isi 4"),
  ];

  static void bikinTugas(String judul, String isi) {
    daftarIsiPenugasan.add(
      IsiPenugasan(
        id: daftarIsiPenugasan.length + 1,
        Judul: judul,
        Isi: isi,
      ),
    );
  }

  static void updatejudul(int id, String newJudul) {
    int index = daftarIsiPenugasan.indexWhere((tugas) => tugas.id == id);
    if (index != -1) {
      daftarIsiPenugasan[index].Judul = newJudul;
    }
  }

  static void updateisi(int id, String newIsi) {
    int index = daftarIsiPenugasan.indexWhere((tugas) => tugas.id == id);
    if (index != -1) {
      daftarIsiPenugasan[index].Isi = newIsi;
    }
  }
}
