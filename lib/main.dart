//import 'package:flutter/material.dart';
//import 'home.dart';
//
//void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context){
//    return MaterialApp(
//      title: "Calculator App",
//      theme: ThemeData(primarySwatch: Colors.blue),
//      home: HomePage(),
//    );
//  }
//}


// 4
import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _iconAnimation = CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeOut,
    );
    _iconAnimation.addListener(() => this.setState((){}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: [
          new Image(image: new AssetImage("assets/pfi.png"),
          fit: BoxFit.cover,
          color: Colors.black,
          colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new FlutterLogo(
                size: _iconAnimation.value*100,
              ),
                Form(child: new Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                      )
                    )
                  )
                  ,child: Container(
                  padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Enter Email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Enter Password"
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 40.0)
                        ),
                        MaterialButton(color: Colors.teal,
                            height: 40.0,
                            minWidth: 100.0,
                            textColor: Colors.white,
                            child: Icon(Icons.arrow_right_alt_sharp),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}















// 3rd time
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(new MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return  MaterialApp(
//      title: "My App",
//      home: new HomePage(),
//      theme: new ThemeData(
//        primarySwatch: Colors.pink,
//        brightness: Brightness.light,
//        accentColor: Colors.red
//      ),
//    );
//  }
//}
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//
//  String myText = "Hello World";
//
//  void _changeText(){
//    setState(() {
//      if (myText.startsWith("H"))
//        myText = "Welcome to my app";
//      else
//        myText = "Hello World";
//    });
//  }
//
//  Widget _bodyWidget(){
//    return new Container(
//      padding: const EdgeInsets.all(8.0),
//      child: new Center(
//          child: new Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              new Text(myText, style: new TextStyle(
//                fontSize: 22.0,
//              ),),
////              new RaisedButton(child: new Text("Click", style: new TextStyle(
////                color: Colors.white,
////                fontSize: 20.0,
////              ),),
////                onPressed: _changeText,
////                color: Colors.blue,
////              )
//            ],
//          )
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Home Page"),
//      ),
//      body: _bodyWidget(),
//      floatingActionButton: new FloatingActionButton(
//          child: new Icon(Icons.add),
//          onPressed: _changeText,
//      ),
//    );
//  }
//}
























//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(new MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "myapp",
//        home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text("hi"),
//
//          ),
//        )
//    );
//  }
//}




// 2nd time
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(new MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return  MaterialApp(
//      title: "My App",
//      home: new HomePage(),
//    );
//  }
//}
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Home Page"),
//      ),
//      body: new Center(child: new Text("Hello Stateful Widget"),),
//    );
//  }
//}


