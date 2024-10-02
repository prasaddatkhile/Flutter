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
        appBar:AppBar(
          title:const Text("Netflix Demo",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          )),
          centerTitle: true,
          backgroundColor: Colors.blue,),
        body: ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text("Action Movies",
               style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
               )
               ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(children: [
                  Container(
                    padding:const EdgeInsets.all(5),
                    height:300,
                    width:200,
                    child:Image.network("https://i.pinimg.com/originals/12/b6/59/12b6598a31de60df4c4b8308c35a98a7.jpg"),
                  ),
                   Container(
                    padding:const EdgeInsets.all(5),
                    height:300,
                    width:200,
                    child:Image.network("https://akm-img-a-in.tosshub.com/indiatoday/images/photogallery/201809/2point0_1_IT_1536382553110.jpg?VersionId=1IbEJRfXo0QTQMzje96JFDII3Fj134I8&size=686:*"),
                  ),
                   Container(
                    padding:const EdgeInsets.all(5),
                    height:300,
                    width:200,
                    child:Image.network("https://www.scrolldroll.com/wp-content/uploads/2021/03/War-Bollywood-action-movies.jpg"),
                  ),
                  Container(
                    padding:const EdgeInsets.all(5),
                    height:300,
                    width:200,
                    child:Image.network("https://m.media-amazon.com/images/M/MV5BNTU2MzZkNDMtYTM3Yy00ZjEyLTljZDUtNWZhYTNjYWRlODc5XkEyXkFqcGc@._V1_.jpg"),
                  ),
                  Container(
                    padding:const EdgeInsets.all(5),
                    height:300,
                    width:200,
                    child:Image.network("https://m.media-amazon.com/images/M/MV5BNTViNzVlZTQtOTRlMi00Y2E2LWI1YWEtN2RlNWEzYzM5NjUzXkEyXkFqcGc@._V1_.jpg"),
                  ),
                  Container(
                    padding:const EdgeInsets.all(5),
                    height:300,
                    width:200,
                    child:Image.network("https://e0.pxfuel.com/wallpapers/225/929/desktop-wallpaper-thyview-most-awaited-movies-2021-tfi-pushpa-2-9-twitter-super-30-thumbnail.jpg"),
                  )
                ],)
               )
              ],
            );
            
          },
          )
      ),
    );
  }
}
