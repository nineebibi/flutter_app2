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
            title: Text('EV Charging',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          body: Padding(padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              IconButton(onPressed: () {}, icon: const Icon(Icons.battery_charging_full_rounded)),
                              Text('99%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              IconButton(onPressed: () {}, icon: const Icon(Icons.battery_charging_full_rounded)),
                              Text('99%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              IconButton(onPressed: () {}, icon: const Icon(Icons.battery_charging_full_rounded)),
                              Text('99%',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // body: Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Column(
          //     children: [
          //       Image.asset('assets/image/honda.jpg'),
          //       Text('ขอบคุณที่ใช้บริการ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //       Text('เรายินที่ได้ใช้บิรการกับเรา Honda\n\n',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //       Card(
          //         child: Column(
          //           children: [
          //       Row(children: [Text('สรุปรายละเอียดการสั่งซื้อ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))],),
          //       Row(children: [IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_month)),
          //         Text('วันที่รับรถ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         Spacer(),Text('15/12/2567',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         ],
          //       ),
          //       Row(children: [IconButton(onPressed: () {}, icon: const Icon(Icons.place)),
          //         Text('สถานที่รับรถ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         Spacer(),Text('สยามพารากอน',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         ],
          //       ),
          //       Row(children: [IconButton(onPressed: () {}, icon: const Icon(Icons.price_change_sharp)),
          //         Text('เงินมัดจำที่ต้องจ่าย',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         Spacer(),Text('500,000 บาท',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         ],
          //       ),
          //       Row(children: [IconButton(onPressed: () {}, icon: const Icon(Icons.car_rental)),
          //         Text('รุ่นของรถยนต์',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         Spacer(),Text('Honda Civic RS 2024',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          //         ],
          //       ),],),),
          //     TextField(
          //       decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //         labelText: "NAME",
          //         hintText: "Enter Name",
          //       ),
          //     ),
          //     ],
          //   ),
          // ),
          floatingActionButton: FloatingActionButton(onPressed: () {debugPrint('Test');},child: const Icon(Icons.shopping_bag_outlined),),
        ));
  }
}
