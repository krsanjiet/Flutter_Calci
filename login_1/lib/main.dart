import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void updatestatus() {
      print('Login successful');
    }

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text("Login Page"),
          ),
          body: Container(
           // color: Color(0xffffffff),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/backgroundtheme1.png'),
                fit: BoxFit.fill,
              )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/flutter.png'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left:10,right: 10),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    //color: Color(0xffF2F5F3),
                    color: Colors.grey.shade200.withOpacity(0.5),
                    border: Border.all(
                      width: 2,
                      color: Color(0xff4f5b66),
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      color: Color(0xff004445),
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      hintText: 'Enter User Name',
                      hintStyle: TextStyle(
                        color: Color(0xff52de97),
                      ),
                      labelText: 'User Name',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    validator: (String value) {
                      return value.contains('@')
                          ? 'Do not use the @ char'
                          : null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left:15, right: 15,top: 15,bottom: 35),
                  padding: EdgeInsets.only(left:10, right: 10),
                  decoration: BoxDecoration(
                    //color: Color(0xffF2F5F3),
                    color: Colors.grey.shade200.withOpacity(0.5),
                    border: Border.all(
                      width: 2,
                      color: Color(0xff4f5b66),
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      color: Color(0xffe5e5e5),
                      //color: Colors.grey.shade200.withOpacity(0.5),
                      fontSize: 20,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.security,
                        size: 30,
                      ),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        color: Color(0xff52de97),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'password is required';
                      }
                    },
                  ),
                ),
               
                RaisedButton(
                  color: Colors.white24.withOpacity(0.5),
                  padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      
                      
                    ),
                  ),
                  onPressed: updatestatus,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Color(0xff2c7873))
                  ),
                ),
                //)
              ],
            ),
          )),
    );
  }
}
