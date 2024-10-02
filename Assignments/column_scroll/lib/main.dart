import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("column scroll",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          )),
          centerTitle: true,
          backgroundColor: Colors.amber,),
        body: SingleChildScrollView(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg"),
              Container(
                height:100,
                width:100,
                color: Colors.cyan,

              ),
              Image.network("https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg"),
              Container(
                height:100,
                width:100,
                color: Colors.cyan,

              ),
              Image.network("https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg"),
              Container(
                height:100,
                width:100,
                color: Colors.cyan,

              ),
              Image.network("https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg"),
              Container(
                height:100,
                width:100,
                color: Colors.cyan,

              ),
            ],)
          
        ),
      ),
    );
  }
}
