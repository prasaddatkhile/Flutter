import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

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
        appBar: AppBar(
          title: const Text("Container Gradient",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          )),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child:Container(
            height:300,
            width:300,
            alignment: Alignment.bottomLeft,
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
                colors:[
                  Colors.red,
                  Colors.black,

                ],

              )
            ),
            child: const Text(
              "hello",
              style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color:Colors.amber,
              )
            )
          )
        ),
      ),
    );
  }
}
