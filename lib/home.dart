import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color? getcolor() {
    return Color.fromARGB(255, 145, 190, 226);
  }

  var output;
  var ab = '';
  var operator;
  double num1 = 0;
  double num2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getcolor(),
        title: Center(
            child: Text(
          'Calender',
          style: TextStyle(color: Colors.black, fontSize: 28),
        )),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 380),
                child: Column(
                  children: [
                    Text(
                      ab,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Text(
                      output != null ? output.toString() : '',
                    ),
                  ],
                ),
              ),
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            ab = ab + '1';
                          });
                        },
                        child: Text('1'),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            ab = ab + '2';
                          });
                        },
                        child: Text('2'),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            ab = ab + '3';
                          });
                        },
                        child: Text('3'),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            ab = ab + '+';
                            operator = '+';
                            num2 = num1;
                          });
                        },
                        child: Text('+'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '4';
                            });
                          },
                          child: Text('4'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '5';
                            });
                          },
                          child: Text('5'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '6';
                            });
                          },
                          child: Text('6'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '-';
                              operator = '-';
                              num2 = num1;
                            });
                          },
                          child: Text('-'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '7';
                            });
                          },
                          child: Text('7'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '8';
                            });
                          },
                          child: Text('8'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '9';
                            });
                          },
                          child: Text('9'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '*';
                              operator = '*';
                              num2 = double.parse(ab);
                            });
                          },
                          child: Text('*'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '';
                            });
                          },
                          child: Text('0'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              operator = 'C';
                            });
                          },
                          child: Text('C'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              ab = ab + '/';
                              operator = '/';
                              num2 = double.parse(ab);
                            });
                          },
                          child: Text('/'),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            if (operator == '+') {
                              setState(() {
                                output = ab + num2.toString();
                              });
                            } else if (operator == '-') {
                              setState(() {
                                output = num1 - num2;
                              });
                            } else if (operator == '*') {
                              setState(() {
                                output = num1 * num2;
                              });
                            } else if (operator == '/') {
                              setState(() {
                                output = num1 / num2;
                              });
                            }
                          },
                          child: Text('='),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
