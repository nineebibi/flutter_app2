import 'package:flutter/material.dart';
import 'package:flutter_app2/displaypage.dart';
import 'package:flutter_app2/my_futurebuilder_page.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
                ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyFutureBuilderPage(),));
                }, child: const Icon(Icons.devices)),
            ],
          ),
        ],
      ),
      )
    );;
  }
}