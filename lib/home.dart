import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("app")),
      body: Column(
        children: [
          Row(children: [
            Flexible(
                flex: 3,
                child: Container(height: 100, width: 197, color: Colors.amber)),
            Expanded(child: Container(height: 100, color: Colors.black26)),
          ]),
         Row(children: [
           Flexible(flex: 2,child: Container(color: Colors.blue.shade100,height: 100,)),
          Flexible(flex: 2,child: Container(color: Colors.blue,height: 100,))
         ],),
          Row(children: [
           Flexible(flex: 1,child: Container(color: Colors.black,height: 100,)),
          Flexible(flex: 3,child: Container(color: Colors.blue,height: 100,width: 100,))
         ],),
           Row(children: [
           Flexible(flex: 1,child: Container(color: Colors.black,height: 100,width: 195,)),
          Flexible(flex: 1,child: Container(color: Colors.blue,height: 100,))
         ],)
        
        ],
      ),
    );
  }
}
