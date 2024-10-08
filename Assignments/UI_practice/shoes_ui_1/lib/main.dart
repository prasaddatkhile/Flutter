
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
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Shoes",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 113, 54, 241)),
              textAlign: TextAlign.left,
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(onPressed: () => {}, icon: Icon(Icons.shopping_cart,
              color: Color.fromARGB(255, 113, 54, 241,))),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              height:390,
              width:MediaQuery.of(context).size.width,
            child:  Image.network(
                  "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
               fit:BoxFit.cover,  
            ),),
                  const SizedBox(
                    height:10,),
                Padding(padding:const EdgeInsets.only(left:20) , 
             child: const SizedBox(
                height: 40,
                child: Text(
                  'Nike Air Force 1 "07',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
                ),
              const SizedBox(
                height: 5,
              ),
              Padding(padding: const EdgeInsets.only(left:20),
             child: Row(children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text(
                    "SHOES",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 103, 33, 243)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text(
                    "FOOTWEAR",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 103, 33, 243)),
                  ),
                ),
              ]),
              ),
              Padding(padding: const EdgeInsets.all(20),
              child: Text(
                  "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era- echoing '80s construction and reflective-design Swoosh logos.",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 74, 73, 73),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )),),
             
            Padding(padding: const EdgeInsets.all(20),  
            
             child: Row(
                children: [
                  const Text("Quantity",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(width: 20),
                  Container(
                    child: IconButton(
                        onPressed: () {
                          count--;
                          setState(() {});
                        },
                        icon: Icon(Icons.remove,
                        size:30)),
                  ),
                  Container(
                    height: 35,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(7),
                      color:Colors.white ,
                      border: Border.all(color:Colors.grey)),
                    child: Text("$count",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400
                    ),),
                  ),
                  // const SizedBox(width: 20),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        count++;
                        setState(() {
                          
                        });
                      },
                      icon: Icon(
                        Icons.add,size: 30,
                      ),
                      // style: ButtonStyle(iconSize:),
                    ),
                  ),
                ],
              ),
            ),
              Padding(padding: const EdgeInsets.only(left:20,right:20),
             child: Container(
                height:52,
                width: 426,
                child: ElevatedButton(
                  onPressed: () => {},
                  child: const Text(
                    "PURCHASE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 103, 33, 243)),
                  ),
                ),
              ),
              ),
            ],
          ),
        ));
  }
}
