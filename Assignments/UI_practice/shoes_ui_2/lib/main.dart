import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
          title: const Text(
            "My Cart",
            style: TextStyle(
                color: Color.fromARGB(255, 123, 101, 252),
                fontWeight: FontWeight.w800,
                fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 240, 238, 238),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          
         child:  Column(

            children: [
            
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromARGB(255, 239, 234, 234),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/shoes.jpg"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Nike Shoes",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              )),
                          const Text(
                              "with iconic style and legendary comfort,on repeat.",
                              style: TextStyle(fontSize: 15)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                "\$77.00",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              // const Spacer(),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        count--;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.remove, size: 25)),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Container(
                                      height: 30,
                                      width: 28,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Text(
                                        "$count",
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        count++;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.add, size: 25)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //-------------------------------
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color.fromARGB(255, 239, 234, 234),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              20), // Adjust the value to change the roundness
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset("assets/shoes.jpg"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Nike Shoes",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              )),
                          const Text(
                              "with iconic style and legendary comfort,on repeat.",
                              style: TextStyle(fontSize: 15)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                "\$77.00",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              // const Spacer(),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        count--;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.remove, size: 25)),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Container(
                                      height: 30,
                                      width: 28,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Text(
                                        "$count",
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        count++;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.add, size: 25)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //-----------------------------
               
              
         
              const Spacer(),

              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text("subtotal:",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Spacer(),
                    Text(
                      "\$800",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              // SizedBox(height:20),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text("Delivery fee:",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Spacer(),
                    Text(
                      "\$5.00",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text("discount:",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Spacer(),
                    Text(
                      "40%",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: const Text("Checkout for \$480.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800)),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 125, 103, 252))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
