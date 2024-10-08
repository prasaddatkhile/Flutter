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
      home:Scaffold(
        appBar:AppBar(
          
          title:const Text("DemoApp",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
          ),
         centerTitle: true,
         backgroundColor: Colors.blue,
         //leading:const  Icon(Icons.menu,),
         actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
        ],
         ), 
         
         ),
          
  
        
    
    );
  }
}
