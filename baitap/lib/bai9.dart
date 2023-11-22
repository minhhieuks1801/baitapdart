import 'package:flutter/material.dart';

class hinhChuNhat{
  int dai;
  int rong;

  hinhChuNhat(this.dai, this.rong);

  int dienTich(){
    return (dai+rong)*2;
  }

  int chuVi(){
    return dai*rong;
  }
}

class bai9 extends StatefulWidget {
  const bai9({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

int? c, d;
class MyApp1 extends State<bai9>{

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
                  Text('Dai: '),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: Controller1,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Rong: '),
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
                  Text('Chu vi: '),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(c.toString()),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Dien tich: '),
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
    int dai = int.parse(Controller1.text);
    int rong = int.parse(Controller2.text);
    c = hinhChuNhat(dai, rong).chuVi();
    d = hinhChuNhat(dai, rong).dienTich();
    setState(() {});
  }
}