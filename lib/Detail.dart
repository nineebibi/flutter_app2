import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  String Charging_time = '';

  final target = TextEditingController();
  final chg_rate = TextEditingController();
  final volt = TextEditingController();
  final bat = TextEditingController();
  final eff = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('EV Charging',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ),
      body: Padding(padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/image/ev.jpg'),
            // Card(
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Column(
            //             children: [
            //               IconButton(onPressed: () {}, icon: const Icon(Icons.battery_charging_full_rounded)),
            //               Text(
            //                 'Current SOC',
            //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
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
                              Text('Target SOC',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10), // ระยะห่างระหว่าง Text และ TextField
                              SizedBox(
                                width: 150, // กำหนดขนาดความกว้างของ TextField
                                child: TextField(
                                  controller: target,
                                  decoration: InputDecoration(
                                    labelText: 'Enter Target SOC',
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    debugPrint('Current SOC: $value');
                                  },
                                ),
                              ),
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
                              Text('Chg rate A',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10), // ระยะห่างระหว่าง Text และ TextField
                              SizedBox(
                                width: 150, // กำหนดขนาดความกว้างของ TextField
                                child: TextField(
                                  controller: chg_rate,
                                  decoration: InputDecoration(
                                    labelText: 'Enter ',
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    debugPrint('Current SOC: $value');
                                  },
                                ),
                              ),
                            ],
                          ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(Icons.change_circle)),
                          Text(
                            'Volt',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10), // ระยะห่างระหว่าง Text และ TextField
                          SizedBox(
                            width: 150, // กำหนดขนาดความกว้างของ TextField
                            child: TextField(
                              controller: volt,
                              decoration: InputDecoration(
                                labelText: 'Enter Bat kWh ',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                debugPrint('Current SOC: $value');
                              },
                            ),
                          ),
                        ],
                      )
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
                              IconButton(onPressed: () {}, icon: const Icon(Icons.battery_full)),
                              SizedBox(height: 10), // ระยะห่างระหว่าง Text และ TextField
                              SizedBox(
                                width: 150, // กำหนดขนาดความกว้างของ TextField
                                child: TextField(
                                  controller: bat,
                                  decoration: InputDecoration(
                                    labelText: 'Enter Bat kWh ',
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    debugPrint('Current SOC: $value');
                                  },
                                ),
                              ),
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
                              SizedBox(height: 10), // ระยะห่างระหว่าง Text และ TextField
                              SizedBox(
                                width: 150, // กำหนดขนาดความกว้างของ TextField
                                child: TextField(
                                  controller: eff,
                                  decoration: InputDecoration(
                                    labelText: 'Enter Eff',
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    debugPrint('Current SOC: $value');
                                  },
                                ),
                              ),
                            ],
                          ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(Icons.alarm)),
                          Text('Chg time(hrs) $Charging_time',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
      floatingActionButton: FloatingActionButton(onPressed: () {

    double n_Target = double.parse(target.text);
    double n_Chg_rate = double.parse(chg_rate.text);
    double n_Volt = double.parse(volt.text);
    double n_Bat_kwh = double.parse(bat.text);
    double n_Eff = double.parse(eff.text);

    String _result = (n_Target * n_Bat_kwh / 100 / ((n_Volt * n_Chg_rate) * n_Eff)).toStringAsFixed(4);
    setState(() {
      Charging_time = "$_result";});},child: const Icon(Icons.find_in_page),),
    );
  }
}
