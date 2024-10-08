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
          title:const Text("scroll Containers"),
          centerTitle: true,
          backgroundColor: Colors.blue,),
        body: SingleChildScrollView(
          
          child:Container(
            width: MediaQuery.of(context).size.width,
           
            child:Column(
              
            children: [
            const  SizedBox(
                height:20//sizedbox is just for giving space between containers
              ),
              Container(
                height:200,
                width:200,
                color:Colors.red,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.green,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.amber,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.blue,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.pink,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.yellow,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.black,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.cyan,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.purple,
              ),
              const  SizedBox(
                height:20
              ),
              Container(
                height:200,
                width:200,
                color:Colors.grey,
              ),
              const  SizedBox(
                height:20
              ),

            ],
            ),
          ),
        ),
      ),
    );
  }
}
