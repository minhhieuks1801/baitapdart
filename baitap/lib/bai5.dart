import 'package:flutter/material.dart';

class bai5 extends StatefulWidget {
  const bai5({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

String? c;
class MyApp1 extends State<bai5>{

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

  void Nhap(){
    int a = int.parse(Controller1.text);
    int b = 0;
    for(int i = 2; i < a; i ++){
      if(a%i == 0){
        b++;
        break;
      }
    }
    c: (b > 0)? "Khong phai so nguyen to": "So nguyen to";
    setState(() {});
  }
}