import 'dart:math';

import 'package:flutter/material.dart';

class bai10 extends StatefulWidget {
  const bai10({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

int c = Random().nextInt(10);
String? d = "";
final k = c;
class MyApp1 extends State<bai10>{

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
                  Text(d.toString()),
                ],
              ),
            ]
        ),
      ),
    );
  }

  void Nhap(){
    int a = int.parse(Controller1.text);

    if(a > k){
      d = 'Lớn hơn';
    }
    else if(a < k){
      d = 'Nhỏ hơn';
    }
    else{
      d = 'Đúng rồi!';
    }
    Controller1.clear();
    setState(() {});
  }
}