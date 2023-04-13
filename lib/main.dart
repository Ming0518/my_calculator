import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get onPressed => null;

  TextEditingController control1 = TextEditingController();
  int result1 = 0, result2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('My Calculator'),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: control1,
                    decoration: InputDecoration(
                        hintText: "Result",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(.0))),
                    keyboardType: const TextInputType.numberWithOptions(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(40),
                  height: 280,
                  width: 302,
                  color: Colors.pink,
                  child: Column(children: [
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              calculate("1");
                            },
                            child: const Text("1")),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              calculate("2");
                            },
                            child: const Text("2")),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              calculate("3");
                            },
                            child: const Text("3")),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              calculate("4");
                            },
                            child: const Text("4")),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              calculate("5");
                            },
                            child: const Text("5")),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              calculate("6");
                            },
                            child: const Text("6")),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              calculate("7");
                            },
                            child: const Text("7")),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              calculate("8");
                            },
                            child: const Text("8")),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              calculate("9");
                            },
                            child: const Text("9")),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              calculate("0");
                            },
                            child: const Text("0")),
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ));
  }

  void calculate(String s) {
    setState(() {
      result2 = int.parse(s);
      result1 = result1 + result2;
      control1.text = result1.toString();
    });
  }
}
