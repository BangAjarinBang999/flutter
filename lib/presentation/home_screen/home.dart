

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tugas/presentation/data/isiPenugasan.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  int totalTugas = IsiPenugasan.daftarIsiPenugasan.length;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 45),
                  child: Container(
                    width: 166,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.76),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Comming Soon',
                                  style: TextStyle(
                                    color: Color(0xFFB45309),
                                    fontSize: 23.52,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Persentase',
                                  style: TextStyle(
                                    color: Color(0xFF64748B),
                                    fontSize: 15.29,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 45, right: 20),
                  child: Container(
                    width: 166,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.76),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Comming Soon',
                                  style: TextStyle(
                                    color: Color(0xFF4178D4),
                                    fontSize: 23.52,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Kelengkapan',
                                  style: TextStyle(
                                    color: Color(0xFF64748B),
                                    fontSize: 15.29,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    width: 166,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.76),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  '$totalTugas',
                                  style: TextStyle(
                                    color: Color(0xFF52B6DF),
                                    fontSize: 23.52,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Penugasan',
                                  style: TextStyle(
                                    color: Color(0xFF64748B),
                                    fontSize: 15.29,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Container(
                    width: 166,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.76),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    color: Color(0xFFF59E0B),
                                    fontSize: 23.52,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Total Pelajaran',
                                  style: TextStyle(
                                    color: Color(0xFF64748B),
                                    fontSize: 15.29,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/Study.png',
                          width: 20,
                          height: 20,
                        ),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20.94)),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "Pelajaran",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF64748B)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/book.png',
                          height: 20,
                          width: 20,
                        ),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20.94)),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        'Penugasan',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF64748B),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'image/presensi.png',
                        ),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20.94)),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        'Presentase',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF64748B),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, bottom: 40),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      'Jadwal',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 17.80,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Comming',
                    style: TextStyle(
                      color: Color(0xFF334155),
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      'Soon',
                      style: TextStyle(
                        color: Color(0xFF334155),
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
  }
}