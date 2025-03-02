import 'package:flutter/material.dart';
import 'package:flutter_app2/Detail.dart';
import 'package:flutter_app2/displaypage.dart';
import 'package:flutter_app2/Listviw.dart';
import 'package:flutter_app2/home.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({super.key});

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  String _output = " ";
  final _textController = TextEditingController();
  final ages = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("HOME"),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  const Text("Hello"),
                  TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Name",
                      labelText: "Name",
                    ),
                  ),
                  TextField(
                    controller: ages,
                    decoration: const InputDecoration(
                      hintText: "Enter Your age",
                      labelText: "age",
                    ),
                  ),
                  Text("$_output"),
                  ElevatedButton(
                      onPressed: () {
                        String input = _textController.text;
                        int input2 = int.parse(ages.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => displaypage(
                                      name: input,
                                      age: input2,
                                    )));
                      },
                      child: const Icon(Icons.devices)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detail(),
                            ));
                      },
                      child: const Icon(Icons.devices)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homepage(),
                            ));
                      },
                      child: const Icon(Icons.devices)),
                ],
              ),
            ],
          ),
        ));
  }
}
