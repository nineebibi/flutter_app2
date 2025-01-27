import 'package:flutter/material.dart';
import 'package:flutter_app2/displaypage.dart';
import 'package:flutter_app2/my_futurebuilder_page.dart';

class eiei extends StatefulWidget {
  const eiei({super.key});

  @override
  State<eiei> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<eiei> {

  final List<String> testeiei = <String>[
    'test1',
    'test2',
    'test3',
    'test4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('Myapp'),
      ),
       body: ListView.separated(
        itemCount: testeiei.length,
        itemBuilder: (context,index)=>ListTile(
          title: Text(
            testeiei[index],
            
          ),
        ),
        separatorBuilder: (context, int index) => const MyFutureBuilderPage(),
       )
      // ListView(
      //   children: [
      //     ListTile(
      //       title: Text('test'),
      //       leading: Icon(Icons.person),
      //       subtitle: Text('View/Edit your profile'),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //       tileColor: Colors.green,
      //       onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>displaypage())),
      //     ),
      //     ListTile(
      //       title: Text('test1'),
      //     ),
      //     ListTile(
      //       title: Text('test2'),
      //     ),
      //   ],
      // ),
    );
  }
}