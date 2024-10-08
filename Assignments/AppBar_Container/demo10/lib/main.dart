import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("DemoApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Container(
            width: 300,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.red, 
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), 
                bottomRight: Radius.circular(20), 
              ),
            ),
          ),
        ),
      ),
    );
  }
}
