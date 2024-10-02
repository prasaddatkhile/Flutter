
import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Column Demo",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 225, 119, 172),),
          body:Container(
            width:MediaQuery.of(context).size.width,
            color:Color.fromARGB(255, 5, 73, 86),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
              
              Container(
                width:200,
                height:200,
                color:Color.fromARGB(255, 207, 45, 236)
                ,),
                Container(
                width:200,
                height:200,
                color:Color.fromARGB(255, 225, 25, 89)
                ,),],)
                ),)
    );
  }
}