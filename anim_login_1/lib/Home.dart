import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeStateClass();
}

class HomeStateClass extends State<Home> {
  List<String> products = ["test1","test2","test2"];

  



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10, left: 5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          child: SizedBox(
                        child: Image.asset('assets/hamburgersidebaricon.png'),
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: SizedBox(
                            child: Image.asset(
                              'assets/myntralogo.png',
                            ),
                          )),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.search),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.notifications),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.bookmark),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.shopping_cart),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 80,
                      child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: products.length,
                       itemBuilder: (BuildContext ctxt, int index){
                         return Text(products[index]);
                       },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
