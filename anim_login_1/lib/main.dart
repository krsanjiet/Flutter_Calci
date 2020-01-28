import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation class',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => stateClass();
}

class stateClass extends State<HomePage> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  Animation<double> sizeAnimation;
  int currentState = 0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0, end: 60).animate(animationController)
      ..addListener(() {
        setState(() {});
      });

    sizeAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Animation login'),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: 100,
                  //color: Colors.black,
                  child: Center(
                    child: Image.asset('assets/fluttericon.png'),
                  )),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'enter your email id',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'enter your password',
                  ),
                ),
              ),
              Container(
               // color: Colors.teal,
             //   height: 0,
                child: Center(
                    child: Transform.scale(
                  scale: sizeAnimation.value-1 ,
                  child: FlatButton(
                    onPressed: animationController.forward,
                    color: Colors.redAccent[200],
                    child: Text(
                      'ok',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                )),
              ),
              Container(
                //color: Colors.teal,
                height: 80,
                child: Center(
                    child: Transform.scale(
                  scale: sizeAnimation.value,
                  child: FlatButton(
                    onPressed: animationController.reverse,
                    color: Colors.redAccent[200],
                    child: Text(
                      'approved',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                )),
              ),

              // Transform.scale(
              //   scale: sizeAnimation.value - 1,
              //   child: Container(
              //     width: 100,
              //     height: 50,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.redAccent[100],
              //     ),
              //     padding: EdgeInsets.all(10),
              //     child: InkWell(
              //       onTap: animationController.forward,
              //       child: Center(
              //         child: Opacity(
              //           opacity: 0.5,
              //           child: Text(
              //             'Sign in',
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //               fontSize: 18,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        )));
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

//   AnimationController animationController;
//   Animation<double> animation;
//   Animation<double> sizeAnimation;
//   int currentState = 0;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     animationController = AnimationController(duration: Duration(milliseconds: 500),vsync: this);
//     animation = Tween<double>(begin: 0,end: 60).animate(animationController)..addListener((){
//       setState(() {

//       });
//     });
//     sizeAnimation = Tween<double>(begin: 0,end: 1).animate(CurvedAnimation(parent: animationController,curve: Curves.fastOutSlowIn))..addListener((){
//       setState(() {

//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           width: 200,
//           height: 300,
//           child: Stack(
//             children: <Widget>[
//               Positioned(
//                 bottom: 200,
//                 child: Transform.scale(
//                     scale: sizeAnimation.value,
//                     child: FloatingActionButton(
//                     backgroundColor: Colors.redAccent,
//                     onPressed: (){},
//                     child: Icon(Icons.cake)),
//                 ),
//               ),
//               Positioned(
//                 bottom: 0,

//                 child: Transform.scale(
//                   scale: sizeAnimation.value,
//                     child: FloatingActionButton(
//                     backgroundColor: Colors.green,
//                     onPressed: (){
//                       animationController.reverse();
//                     },
//                     child: Icon(Icons.close)),
//                 ),
//               ),
//               Positioned(
//                 bottom: 0,
//                 child: Transform.scale(
//                   scale: sizeAnimation.value - 0.5,
//                    child: FloatingActionButton(
//                     onPressed: (){
//                       animationController.forward();

//                     },
//                     child: Icon(Icons.add)),
//                 ),
//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
