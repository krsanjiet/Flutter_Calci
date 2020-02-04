import 'package:flutter/material.dart';
import 'package:anim_login_1/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';

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


  void validationAndSubmit() async{
    try{
    AuthResult user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: 'krsanjiet91@gmail.com',password: 'sanjeet');
    
    print(user);
    } catch (e){
      print('$e');
    }
  }



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
                    child: Transform.rotate(
                  angle: 0 ,
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
               Container(
                //color: Colors.teal,
                height: 80,
                child: Center(
                    child: Transform.scale(
                  scale: sizeAnimation.value,
                  child: FlatButton(
                    // onPressed: (){
                    //   Navigator.push(context, 
                    //   MaterialPageRoute(builder: (context)=>Home()));
                    // },
                    onPressed: validationAndSubmit,
                    color: Colors.redAccent[200],
                    child: Text(
                      'Move Forward',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                )),
              ),


             
            ],
          ),
        )));
  }
}


