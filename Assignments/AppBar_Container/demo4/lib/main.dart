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
          title:const Text("Demo Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              height:100,
              width:100,
              color:Colors.red,
            ),
            Container(
              height:100,
              width:100,
              color:Colors.black,
            ),
          ],)
        ),
      ),
    );
  }
}
