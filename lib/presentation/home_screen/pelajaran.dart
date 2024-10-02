import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tugas/presentation/pelajaran/matematika.dart';

class Pelajaran extends StatefulWidget {
  const Pelajaran({ Key? key }) : super(key: key);

  @override
  _PelajaranState createState() => _PelajaranState();
}

class _PelajaranState extends State<Pelajaran> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 40,
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Matematika()));
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('image/mtk.png'),
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color(0xFF86242E),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Matematika',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('image/ekonomi.png'),
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color(0xFFF59E0B),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Ekonomi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('image/b ingg.png'),
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color(0xFF4178D4),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Bahasa Inggris',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('image/b ingg.png'),
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 65, 212, 205),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Bahasa Sunda',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('image/biologi.png'),
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color(0xFF46BD84),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Biologi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('image/geograpi.png'),
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        color: Color(0xFF792294),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Geografi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}