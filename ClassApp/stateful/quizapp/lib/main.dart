import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: QuizApp());
  }
}

class QuizApp extends StatefulWidget {
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  int currentQuetionNo = 0;
  int selectedAnswerIndex = -1;
  bool quetionpage = true;
  int scoreCount = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuetion[currentQuetionNo]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  List<Map> allQuetion = [
    {
      "Quetion": "What is Flutter?",
      "options": [
        "Flutter is an open-source backend development framework",
        "Flutter is an open-source UI toolkit",
        "Flutter is an open-source programming language for cross-platform applications",
        "Flutters is a DBMS toolkit"
      ],
      "correctAnswer": 2
    },
    {
      "Quetion": "Who developed the Flutter Framework ?",
      "options": [" Facebook", " Microsoft", " Oracle", " Goggle"],
      "correctAnswer": 3
    },
    {
      "Quetion":
          "Which programming language is used to build Flutter applications ?",
      "options": [" Kotlin", " Dart", " Java", " Go"],
      "correctAnswer": 1
    },
    {
      "Quetion": "How many types of widgets are there in Flutter ?",
      "options": [" 2", " 6", " 8+", " 4"],
      "correctAnswer": 0
    },
    {
      "Quetion": "which class in Flutter having createState() abstract_method?",
      "options": ["State", "statelessWidget", "statefulWidget", "Widget"],
      "correctAnswer": 2
    },
  ];
  @override
  Widget build(BuildContext context) {
    if (quetionpage == true) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 9, 231),
        appBar: AppBar(
          title: const Text("Quiz App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 251, 231, 238),
              )),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 109, 2, 176),
        ),
        body: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 80,
                  width: 140,
                ),
                Text(
                  "Quetion : ${currentQuetionNo + 1}/${allQuetion.length}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                child: Text(
              allQuetion[currentQuetionNo]["Quetion"],
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            )),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 80,
                width: 350,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(0),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 0;
                        if (selectedAnswerIndex ==
                            allQuetion[currentQuetionNo]["correctAnswer"]) {
                          scoreCount++;
                        }
                        setState(() {});
                      }
                    },
                    child:
                        Text("A.${allQuetion[currentQuetionNo]["options"][0]}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )))),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 80,
                width: 350,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(1),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 1;
                        if (selectedAnswerIndex ==
                            allQuetion[currentQuetionNo]["correctAnswer"]) {
                          scoreCount++;
                        }
                        setState(() {});
                      }
                    },
                    child:
                        Text("B.${allQuetion[currentQuetionNo]["options"][1]}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )))),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 80,
                width: 350,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(2),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 2;
                        if (selectedAnswerIndex ==
                            allQuetion[currentQuetionNo]["correctAnswer"]) {
                          scoreCount++;
                        }
                        setState(() {});
                      }
                    },
                    child:
                        Text("C.${allQuetion[currentQuetionNo]["options"][2]}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )))),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 80,
                width: 350,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(3),
                    ),
                    onPressed: () {
                      if (selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 3;
                        if (selectedAnswerIndex ==
                            allQuetion[currentQuetionNo]["correctAnswer"]) {
                          scoreCount++;
                        }
                        setState(() {});
                      }
                    },
                    child:
                        Text("D.${allQuetion[currentQuetionNo]["options"][3]}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuetionNo < allQuetion.length - 1) {
                currentQuetionNo++;
              } else {
                quetionpage = false;
              }
            }
            selectedAnswerIndex = -1;
            setState(() {});
          },
          backgroundColor: Color.fromARGB(255, 109, 2, 176),
          child: const Icon(Icons.forward, color: Colors.white),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 209, 9, 231),
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 109, 2, 176),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.network(
                    "https://www.freepnglogos.com/uploads/trophy-png/trophy-award-winner-png-33.png"),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                child: Text(
                  "Score $scoreCount / ${allQuetion.length}",
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    quetionpage = true;
                    currentQuetionNo = 0;
                    selectedAnswerIndex = -1;
                    scoreCount = 0;
                    setState(() {});
                  },
                  child: const Text("Repeat",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 6, 66, 116),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/8669/8669703.png"),
              )
            ],
          ),
        ),
      );
    }
  }
}
