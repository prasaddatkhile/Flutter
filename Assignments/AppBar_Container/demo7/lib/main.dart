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
          scrollDirection: Axis.horizontal,
          child:Container(
            height: MediaQuery.of(context).size.height,
           
            child:Row(
              
            children: [
            const  SizedBox(
                width:20//sizedbox is just for giving space between containers
              ),
              Container(
                height:200,
                width:200,
                child: Image.network("https://images.unsplash.com/photo-1597848212624-a19eb35e2651?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D"),
                
              ),
              const  SizedBox(
               width:20
              ),
              Container(
                height:200,
                width:200,
                child: Image.network("https://images.unsplash.com/photo-1597848212624-a19eb35e2651?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D"),
                
              ),
              const  SizedBox(
                width:20
              ),
              Container(
                height:200,
                width:200,
                child: Image.network("https://images.unsplash.com/photo-1597848212624-a19eb35e2651?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D"),
                
              ),
              const  SizedBox(
                width:20
              ),
              Container(
                height:200,
                width:200,
                child: Image.network("https://images.unsplash.com/photo-1597848212624-a19eb35e2651?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D"),
                
              ),
              const  SizedBox(
                width:20
              ),
              Container(
                height:200,
                width:200,
                child: Image.network("https://images.unsplash.com/photo-1597848212624-a19eb35e2651?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D"),
                
              ),
              const  SizedBox(
                width:20
              ),
            

            ],
            ),
          ),
        ),
      ),
    );
  }
}
