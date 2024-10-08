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
          title:const Text("Demo App",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          )),
          actions: [
            IconButton(onPressed:()=>{}, icon: const Icon(Icons.search)),
          ],
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
      ),
    );
  }
}
