import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar:AppBar(
          title:const Text("ListView Builder",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Text("index : $index",
            style: const  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),);
          },
        ),
      ),
    );
  }
}
