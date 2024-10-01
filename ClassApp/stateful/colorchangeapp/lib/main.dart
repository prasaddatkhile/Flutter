import "package:flutter/material.dart";

void main() {
  runApp(const ColorChange());
}

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});
  @override
  State createState() => _ColorChangeState();
}

class _ColorChangeState extends State {
  bool colorChange = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ColorChande App"),
              centerTitle: true,
              backgroundColor: colorChange ? Colors.blue : Colors.yellow,
            ),
            body: Center(
              child: Container(
                height: 300,
                width: 300,
                color: colorChange ? Colors.red : Colors.black,
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (colorChange == true) {
                  colorChange = false;
                } else {
                  colorChange = true;
                }
                setState(() {
                  
                });
              },
              backgroundColor: Colors.green,
              child:const Text("change"),
            ),
            ),
            );
  }
}
