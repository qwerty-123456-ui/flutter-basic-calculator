//import 'package:flutter/material.dart';
//
//class HomePage extends StatefulWidget{
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return HomePageState();
//
//  }
//}
//
//class HomePageState extends State<HomePage>{
//  var num1 = 0, num2 = 0, sum = 0;
//  final TextEditingController t1 = TextEditingController(text: "0");
//  final TextEditingController t2 = TextEditingController(text: "0");
//
//  void doAdd(){
//    setState(() {
//      num1 = int.parse(t1.text);
//      num2 = int.parse(t2.text);
//      sum = num1 + num2;
//    });
//  }
//
//  void doSub(){
//    setState(() {
//      num1 = int.parse(t1.text);
//      num2 = int.parse(t2.text);
//      sum = num1 - num2;
//    });
//  }
//
//  void doMul(){
//    setState(() {
//      num1 = int.parse(t1.text);
//      num2 = int.parse(t2.text);
//      sum = num1 * num2;
//    });
//  }
//
//  void doDiv(){
//    setState(() {
//      num1 = int.parse(t1.text);
//      num2 = int.parse(t2.text);
//      sum = num1 ~/ num2;
//    });
//  }
//
//  doClear(){
//    setState(() {
//      t1.text = "0";
//      t2.text = "0";
//      sum = 0;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context){
//    return new Scaffold(
//      appBar: AppBar(
//        title: Text("Calculator"),
//      ),
//      body: Container(
//        padding: EdgeInsets.all(40.0),
//
//        child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//              Text('Output : $sum',
//                style: TextStyle(
//                  fontSize: 20.0,
//                  color: Colors.purple,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//              TextField(
//                keyboardType: TextInputType.number,
//                decoration: InputDecoration(
//                  hintText: "Enter number 1",
//                ),
//                controller: t1,
//              ),
//              TextField(
//                keyboardType: TextInputType.number,
//                decoration: InputDecoration(
//                  hintText: "Enter number 2",
//                ),
//                controller: t2,
//              ),
//              Padding(padding: const EdgeInsets.only(top: 20.0)),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: [
//                  MaterialButton(
//                      child: Text('+'),
//                      onPressed: doAdd,
//                      color: Colors.lightBlueAccent,
//                  ),
//                  MaterialButton(
//                      child: Text('-'),
//                      onPressed: doSub,
//                      color: Colors.lightBlueAccent,
//                  ),
//                ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   MaterialButton(
//                        child: Text('*'),
//                        onPressed: doMul,
//                        color: Colors.lightBlueAccent,
//                   ),
//                   MaterialButton(
//                        child: Text('/'),
//                        onPressed: doDiv,
//                        color: Colors.lightBlueAccent,
//                   ),
//                  ],
//                ),
//              Padding(padding: EdgeInsets.only(top: 20.0),),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  MaterialButton(
//                      child: Text("Clear"),
//                      color: Colors.lightBlueAccent,
//                      onPressed: doClear,
//                  ),
//                ],
//              )
//            ],
//          ),
//      ),
//    );
//  }
//}