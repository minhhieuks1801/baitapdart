import 'package:flutter/material.dart';

class bai1 extends StatefulWidget {
  const bai1({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

int? c;
class MyApp1 extends State<bai1>{

  final TextEditingController Controller1 = TextEditingController();
  final TextEditingController Controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: Controller1,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: Controller2,
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
                  Text(c.toString()),
                ],
              ),
            ]
        ),
      ),
    );
  }

  void Nhap(){
    String a = Controller1.text;
    String b = Controller2.text;
    c = (int.parse(a) + int.parse(b)) as int;
    setState(() {});
  }
}