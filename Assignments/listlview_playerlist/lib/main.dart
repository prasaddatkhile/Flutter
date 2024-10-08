import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  TextEditingController nameController = TextEditingController();
  String? myName;
  List<String> playersList = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Textfield ListView",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  )),
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Enter Name",
                        hintStyle: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String val) {
                        print("vlue : $val");
                      },
                      onEditingComplete: () {
                        print("Editing Completed");
                      },
                      onSubmitted: (value) {
                        print("value submitted: $value");
                      },
                    )),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      print("Add Data");

                      myName = nameController.text.trim();
                      print("my Name: $myName");
                      if (myName != "") {
                        playersList.add(myName!);
                        print("PlayerList length: ${playersList.length}");
                        nameController.clear();
                        setState(() {});
                      }
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text("Add Data",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            )))),
                const SizedBox(
                  height: 40,
                ),
                ListView.builder(
                    itemCount: playersList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Text(
                        "Name :${playersList[index]}",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      );
                    })
              ],
            )));
  }
}
