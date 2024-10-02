import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Akun extends StatefulWidget {
  const Akun({
    super.key,
  });

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 28.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Comming Soon',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
