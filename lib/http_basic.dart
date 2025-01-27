import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<String> fetchData() async{
  final response =
      await http.get(Uri.parse('​https://itpart.net/mobile/api/product1.php'));
  if(response.statusCode == 200){
    String strBody = response.body.toString();
    debugPrint(strBody);

    return strBody;
  }
  else{
    throw Exception('probrem...')
  }
}

class http_basic extends StatefulWidget {
  const http_basic({super.key});

  @override
  State<http_basic> createState() => _http_basicState();
}

class _http_basicState extends State<http_basic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('FutureBuilder Page'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData) {
                return Text('${snapshot.data}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}