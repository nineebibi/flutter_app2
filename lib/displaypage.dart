import 'package:flutter/material.dart';

class displaypage extends StatefulWidget {
  final String? name;
  final int? age;


  const displaypage({super.key,this.name,this.age});

  @override
  State<displaypage> createState() => _displaypageState();
}

class _displaypageState extends State<displaypage> {
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
              Text("Hello my name is ${widget.name},${widget.age}"),
            ],
          ),
        ],
      ),
      )
    );
  }
}