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
          title:const Text("Instagram",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          
          ),
          ),
          centerTitle: true,
          backgroundColor:Color.fromARGB(255, 249, 16, 86),
          ),
        body:ListView(
          children: [
            SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(children: [
      Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
          
          ),
      ),
          Container(
        height: 80,
        width:80,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          ),
      ),
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          ),
      ),
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
          ),
      ),
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          ),
      ), 
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
          ),
      ),  Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.circle,
          ),
      ),
      Container(
        height: 80,
        width:80,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          ),
      ),
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          ),
      ),
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
          ),
      ),
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          ),
      ), 
        Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
          ),
      ),  Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.yellow,
          shape: BoxShape.circle,
          
          
          ),
      ),   Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
          ),
      ), ],
        ),
        ),
            Image.network("https://as2.ftcdn.net/v2/jpg/05/28/36/77/1000_F_528367769_C1jxw1xnHhwqR7UZZXnNslEitxY9iN76.jpg"),
         const  Row( 
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ Icon(
              Icons.favorite,
              color: Colors.red,),
             Icon(
              Icons.comment,
              color:Colors.grey,
            ),
              Icon(
              Icons.share,
              color:Colors.grey,
            ),
            ],),
              const Text("Maza Bappa!!!"),
           
           Image.network("https://images.news18.com/ibnlive/uploads/2024/09/ganesh-chaturthi-2024-lalbaugcha-raja-1-2024-09-07e2004127224d21bf04201f5a329169.jpg"),
         const  Row( 
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ Icon(
              Icons.favorite,
              color: Colors.red,),
             Icon(
              Icons.comment,
              color:Colors.grey,
            ),
              Icon(
              Icons.share,
              color:Colors.grey,
            ),
            ],),
              const Text("Raja hai ye..."),
            
            Image.network("https://media.assettype.com/freepressjournal/2024-07/d434e3cc-157f-4ac9-91b2-5cb37921460d/Snapinsta.app_430695097_1140665900460456_3313381150106432008_n_1080.jpg"),
         const  Row( 
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ Icon(
              Icons.favorite,
              color: Colors.red,),
             Icon(
              Icons.comment,
              color:Colors.grey,
            ),
              Icon(
              Icons.share,
              color:Colors.grey,
            ),
            ],),
              const Text("Lai Bhari!!!"),

          ],
          ),
        
      ),
    );
  }
}
