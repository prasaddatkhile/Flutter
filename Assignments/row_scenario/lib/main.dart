
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
          title:const Text("Row Demo",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 225, 119, 172),),
          body:Container(
            height:MediaQuery.of(context).size.height,
            color:Color.fromARGB(255, 5, 73, 86),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
              
              Container(
                width:200,
                height:200,
                color:Color.fromARGB(255, 207, 45, 236)
                ,),
                ],)
                ),)
    );
  }
}
