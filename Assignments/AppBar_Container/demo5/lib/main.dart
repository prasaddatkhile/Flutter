import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("images Demo"),
          centerTitle: true,
          backgroundColor: Colors.purple,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
            Container(
              height:150,
              width:150,
              child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_640.jpg"),
            ),
              Container(
              height:150,
              width:150,
              child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/038/112/743/small/ai-generated-vibrant-single-flower-up-close-against-a-backdrop-of-vivid-colors-nature-s-palette-ai-generated-photo.jpg"),
            ),
              Container(
              height:150,
              width:150,
              child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_640.jpg"),
            ),
          ],
            )
        ),
      ),
    );
  }
}
