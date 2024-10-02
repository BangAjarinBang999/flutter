import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:tugas/presentation/authentication/log_in_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final nama = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final nomorTelp = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // leading: InkWell(
        //   onTap: () => Navigator.of(context).pop(),
        //   child: Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        // ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Nama"),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: nama,
                  decoration: InputDecoration(
                    hintText: 'Ketik Nama',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Email"),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'belajar@email.com',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Password"),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Ketik password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Nomor telp"),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: nomorTelp,
                  decoration: InputDecoration(
                    hintText: '0821 xxxx xxxx',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                  )),
              SizedBox(
                height: 0.1.h,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Saya setuju dengan syarat dan ketentuan serta perlindungan data pribadi saya pada aplikasi ini',
                      style: TextStyle(fontSize: 15),
                    ),
                    flex: 3,
                  )
                ],
              ),
              Container(
                height: 60,
                width: 720,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogInPage()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
