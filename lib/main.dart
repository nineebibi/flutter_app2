import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true, appBarTheme: AppBarTheme(color: Colors.yellow)),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:Image.asset('assets/image/honda_logo.png',width: 70,),


            // leading: IconButton(onPressed: () {debugPrint('Testiconmenu');}, icon: const Icon(Icons.menu)),
            // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.flag_sharp)),
            //           IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
            // ],
          ),
          body: Column(
            children: [
              Image.asset('assets/image/honda.jpg'),
              Text('ขอบคุณที่ใช้บริการ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              Text('เรายินที่ได้ใช้บิรการกับเรา Honda\n\n',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

              Row(children: [Text('สรุปรายละเอียดการสั่งซื้อ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))],),
              Row(children: [IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_month)),
                Text('วันที่รับรถ                                9/12/2567',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                ],
              ),
              Row(children: [IconButton(onPressed: () {}, icon: const Icon(Icons.place)),
                Text('สถานที่รับรถ                   สยามพารากอน',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                ],
              ),
              // Row(
              //   children: [
              //     ElevatedButton(onPressed: () {debugPrint('Eiei');}, child: Text('SUBMIT')),
              //     IconButton(onPressed: () {}, icon: Icon(Icons.favorite),iconSize: 40,),
              //   ],
              // ),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {debugPrint('Test');},child: const Icon(Icons.shopping_bag_outlined),),
        ));
  }
}
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Taoza'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Count down',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
