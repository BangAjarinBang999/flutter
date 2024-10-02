import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tugas/presentation/authentication/akun.dart';
import 'package:tugas/presentation/home_screen/home.dart';
import 'package:tugas/presentation/home_screen/pelajaran.dart';
import 'package:tugas/presentation/home_screen/penugasan.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  int index = 0;

  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      // home
      Home(),
      // Pelajaran
      Pelajaran(),
      //Penugasan
      Penugasan(),
      //Akun
      Akun(),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          index == 0
              ? InkWell(
                  onTap: () {},
                  child: Image.asset('image/notif.png'),
                )
              : index == 1
                  ? SizedBox(
                      width: 15.w,
                    )
                  : index == 2
                      ? SizedBox(
                          width: 15.w,
                        )
                      : SizedBox.shrink()
        ],
        leading: index == 1
            ? IconButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              )
            : index == 2
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  )
                : null,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            index == 0
                ? Text(
                    "Halo, Hariz Fajar",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 24,
                      color: Color(0xFF0F172A),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : Center(
                    child: Text(
                      index == 1
                          ? "Pelajaran"
                          : index == 2
                              ? 'Penugasan'
                              : 'Akun',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF0F172A),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
            index == 0
                ? SizedBox(
                    height: 8,
                  )
                : SizedBox.shrink(),
            index == 0
                ? Text(
                    "inilah aktiviatas Anda Hari ini",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
      body: _pages.elementAt(index),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.white,
          indicatorColor: Colors.white,
          indicatorShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: NavigationBar(
            height: 97,
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() {
                  this.index = index;
                }),
            destinations: [
              NavigationDestination(
                icon: ImageIcon(
                  AssetImage('image/home.png'),
                  size: 27,
                  color: Color.fromRGBO(203, 213, 225, 1),
                ),
                selectedIcon: ImageIcon(
                  AssetImage(
                    'image/home.png',
                  ),
                  size: 27,
                  color: Color.fromRGBO(49, 109, 134, 1),
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: ImageIcon(
                  AssetImage('image/pelajaran.png'),
                  size: 27,
                  color: Color.fromRGBO(203, 213, 225, 1),
                ),
                selectedIcon: ImageIcon(
                  AssetImage('image/pelajaran.png'),
                  size: 27,
                  color: Color.fromRGBO(49, 109, 134, 1),
                ),
                label: 'Pelajaran',
              ),
              NavigationDestination(
                icon: ImageIcon(
                  AssetImage('image/penugasan.png'),
                  size: 27,
                  color: Color.fromRGBO(203, 213, 225, 1),
                ),
                selectedIcon: ImageIcon(
                  AssetImage('image/penugasan.png'),
                  size: 27,
                  color: Color.fromRGBO(49, 109, 134, 1),
                ),
                label: 'Penugasan',
              ),
              NavigationDestination(
                icon: ImageIcon(
                  AssetImage('image/akun.png'),
                  size: 27,
                  color: Color.fromRGBO(203, 213, 225, 1),
                ),
                selectedIcon: ImageIcon(
                  AssetImage('image/akun.png'),
                  size: 27,
                  color: Color.fromRGBO(49, 109, 134, 1),
                ),
                label: 'Akun',
              )
            ]),
      ),
    );
  }
}
