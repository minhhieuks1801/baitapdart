import 'package:flutter/material.dart';

class bai2 extends StatefulWidget {
  const bai2({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

double? c, b;
class MyApp1 extends State<bai2>{
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
                    Text('Ban kinh'),
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
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: ()=> Nhap(),
                    child: const Text('Nhập'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Chu vi: ' + c.toString()),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Dien tich: ' + b.toString()),
                ],
              ),
            ]
        ),
      ),
    );
  }

  void Nhap(){
    double r = double.parse(Controller1.text);
    c = (2*r*3.14) as double?;
    b = (r*r*3.14) as double?;
    setState(() {});
  }
}