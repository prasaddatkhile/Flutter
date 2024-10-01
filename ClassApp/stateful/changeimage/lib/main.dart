import "package:flutter/material.dart";


void main() {
  runApp(const CricPlayer());
}

class CricPlayer extends StatefulWidget {
  const CricPlayer({super.key});
  @override
  State createState() => _CricPlayerState();
}

class _CricPlayerState extends State {
  List player = ["https://wamu.org/wp-content/uploads/2013/10/10/ap692633499596_wide-fac8117c3eadfde4db40aa679720d75651223362-1500x843.jpg",
  "https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-111741230/111741230.jpg",
  "https://st.adda247.com/https://www.m9.news/wp-content/uploads/2024/03/Virat-Kohli-1.jpg",
  "https://www.mykhel.com/img/2020/08/ms-dhoni-batting-1597655733.jpg",
  "https://images.indianexpress.com/2024/06/jasprit-bumrah.jpg",
  "https://news24online.com/wp-content/uploads/2023/10/final-image-3.jpg"
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Indian Cricketers"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: SizedBox(
              height: 400,
              width: 400,
              child: Image.network(player[index]),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if(index<player.length-1){
                index++ ;
              }else{
                index=0;
              }
              setState(() {} );
            } ,
            backgroundColor: Colors.blue,
            child:const Text("next"),
            ),
          ),
    );
  }
}
