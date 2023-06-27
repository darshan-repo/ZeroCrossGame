import 'package:flutter/material.dart';

class ZCGame extends StatefulWidget {
  const ZCGame({super.key});

  @override
  State<StatefulWidget> createState() => ZCGameState();
}

class ZCGameState extends State<ZCGame> {
  String ans1 = '';
  String ans2 = '';
  String ans3 = '';
  String ans4 = '';
  String ans5 = '';
  String ans6 = '';
  String ans7 = '';
  String ans8 = '';
  String ans9 = '';
  bool trueFalse = false;
  String answer = '';
  int n = 0;
  bool win = false;

  winner() {
    n++;
    if (n >= 5) {
      if ((ans1 == ans2 && ans2 == ans3) ||
          (ans1 == ans4 && ans4 == ans7) ||
          (ans1 == ans5 && ans5 == ans9) && ans1 != '') {
        answer = '$ans1 Is Winner';
        win = true;
      } else if ((ans3 == ans5 && ans5 == ans7) ||
          (ans3 == ans6 && ans6 == ans9) && ans3 != '') {
        answer = '$ans3 Is Winner';
        win = true;
      } else if (ans2 == ans5 && ans5 == ans8 && ans2 != '') {
        answer = '$ans2 Is Winner';
        win = true;
      } else if (ans4 == ans5 && ans5 == ans6 && ans4 != '') {
        answer = '$ans4 Is Winner';
        win = true;
      } else if (ans7 == ans8 && ans8 == ans9 && ans7 != '') {
        answer = '$ans7 Is Winner';
        win = true;
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white70,
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        title: const Text(
          'Zero Cross Game',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 225,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  answer,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (ans1 == '' && !win) {
                      setState(() {
                        ans1 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans1,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (ans2 == '' && !win) {
                      setState(() {
                        ans2 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans2,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (ans3 == '' && !win) {
                      setState(() {
                        ans3 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans3,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (ans4 == '' && !win) {
                      setState(() {
                        ans4 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans4,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (ans5 == '' && !win) {
                      setState(() {
                        ans5 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans5,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (ans6 == '' && !win) {
                      setState(() {
                        ans6 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans6,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (ans7 == '' && !win) {
                      setState(() {
                        ans7 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans7,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (ans8 == '' && !win) {
                      setState(() {
                        ans8 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans8,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (ans9 == '' && !win) {
                      setState(() {
                        ans9 = trueFalse ? 'X' : 'O';
                        trueFalse = !trueFalse;
                        winner();
                      });
                    }
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        ans9,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  ans1 = '';
                  ans2 = '';
                  ans3 = '';
                  ans4 = '';
                  ans5 = '';
                  ans6 = '';
                  ans7 = '';
                  ans8 = '';
                  ans9 = '';
                  answer = '';
                  trueFalse = false;
                  n = 0;
                  win = false;
                });
              },
              child: Container(
                height: 50,
                width: 225,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    'ReStart',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
