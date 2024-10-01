import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("INDIAN FLAG"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
             children: [
            Container(
              height:325,
              width:10,
              
              color:Colors.black,

            ),
             
             ],
            ),
            Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  color: Colors.orange,
                ),
                Container(
                  height: 40,
                  width: 250,
                  color: Colors.white,
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2023/06/23/17/47/ashok-chakra-8083914_1280.png"),
                ),
                Container(
                  height:40,
                  width: 250,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
      ),
    ),);
  }
}
