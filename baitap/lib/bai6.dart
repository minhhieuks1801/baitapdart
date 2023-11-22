import 'package:flutter/material.dart';

class bai6 extends StatefulWidget {
  const bai6({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

List<int> l = [];
String? c = "";
class MyApp1 extends State<bai6>{

  final TextEditingController Controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      const SizedBox(
                        width: 10,
                      ),
                      Text('To nhat: '),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(c! as String),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: ()=> Nhap(),
                        child: const Text('Nhập'),
                      ),
                    ],
                  ),
                  if(l.isNotEmpty)
                  for(int i = 0; i < l.length; i++ )
                    ListTile(
                      title: Text(l[i].toString()),
                    )
              ],
        ),
      ),
    );
  }

  void Nhap(){
    int a = int.parse(Controller1.text);
    l.add(a);
    int max = l[0];
    for(int i = 0; i < l.length; i++ ){
      if(max < l[i]){
        max = l[i];
      }
    }
    c = max.toString();
    setState(() {});
  }
}