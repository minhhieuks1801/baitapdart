import 'package:flutter/material.dart';

class bai7 extends StatefulWidget {
  const bai7({Key? key}) : super(key: key);

  @override
  MyApp1 createState() => MyApp1();
}

List<int> l = [];
List<int> m = [];
String? c = "";
class MyApp1 extends State<bai7>{

  final TextEditingController Controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ElevatedButton(
                  onPressed: ()=> Nhap(),
                  child: const Text('Nhập'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: ()=> DaoMang(),
                  child: const Text('Dao'),
                ),
              ],
            ),
            for(int i = 0; i < l.length; i++ )
              ListTile(
                title: Text(l[i].toString()),
              ),
            Text('Mang dao '),
            for(int i = 0; i < m.length; i++ )
              ListTile(
                title: Text(m[i].toString()),
              ),
          ],
        ),
      ),
    );
  }

  void Nhap(){
    int a = int.parse(Controller1.text);
    l.add(a);
    Controller1.clear();
    setState(() {});
  }

  void DaoMang(){
    for(int i = 0; i < l.length; i++ ){
      if(m.length <= l.length){
        m.add(l[l.length-i-1]);
      }
    }
    setState(() {});
  }
}