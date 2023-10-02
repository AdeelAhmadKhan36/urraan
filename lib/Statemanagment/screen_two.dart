import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.indigo,
        title: Container(
          color: Colors.red,
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,

            child: Text('Second Screen',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
