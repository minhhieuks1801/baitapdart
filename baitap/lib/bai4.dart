import 'package:flutter/material.dart';

class bai4 extends StatefulWidget {
  const bai4({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

String? c;
class MyApp1 extends State<bai4>{

  final TextEditingController Controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('Nhap so: '),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: Controller1,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(
                    onPressed: ()=> Nhap(),
                    child: const Text('Nhập'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(c.toString()),
                ],
              ),
            ]
        ),
      ),
    );
  }

  String daonguoc(String a) {
    var b = a.split('');
    return b.reversed.join();
  }
  void Nhap(){
    var chubandau = Controller1.text;
    c = daonguoc(chubandau);
    setState(() {});
  }
}


