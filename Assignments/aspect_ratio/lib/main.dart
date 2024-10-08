import 'package:flutter/material.dart';
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
        appBar: AppBar(title: const Text("Aspect ratio",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color:Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),),
        body: Center(
        
          child:Container(
            height: 300,
            width:300,
            color:Colors.blue,
          
         
            child:Image.network("https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/g/h/y/medium-god-budhha-art-posters-gautam-buddha-hd-god-photo-original-imagp4btfeburhun.jpeg?q=90&crop=false",
           fit: BoxFit.fill,
          
            
           )
          )
        ),
      ),
    );
  }
}
