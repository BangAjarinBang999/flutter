import 'package:flutter/material.dart';

class Matematika extends StatefulWidget {
  const Matematika({super.key});

  @override
  State<Matematika> createState() => _MatematikaState();
}

class _MatematikaState extends State<Matematika> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Matematika',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
