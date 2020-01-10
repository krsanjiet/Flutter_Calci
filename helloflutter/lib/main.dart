import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{

 bool flag = true;
 int val1,val2,check1 = 0, check2 = 0;
 String result = "";
 
 void setValue(int a){
   if(flag == true){
     val1  = a; flag = false; check1 = 1;
   }else if(flag == false){
     val2 = a; flag = true; check2 = 1;
   }
 }

 void sumValue(){
   if(check1 == 0){
     result = "enter first number";
   }else if(check2 == 0){
     result = "enter second number";
   }else{
     int temp = val1+val2;
     result = temp.toString();
   }
 }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
         title: Center(
           child: Text("CALCULATOR"),
         ),
         backgroundColor: Colors.teal,
        ),

      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 50,left: 10,right: 10,top: 10),
            
           width: 400,
           height: 200.0,
          // color: Colors.teal[200],
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            boxShadow: [BoxShadow(
              color: Colors.teal[200],
              blurRadius: 2.0
            )
            ]
          ),
            child: Text(
            result,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 25.0,
            ),
            ),
          ),
         Row( children: <Widget>[
           
           Container(
          margin: EdgeInsets.only(left: 14,right: 5,top: 5,bottom: 5),
           // color: Colors.red[200],
            child: FlatButton(
              
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              child: Text("1",
              style: TextStyle(
                fontSize: 20,

              ),
              ), 
              onPressed: ()=>setValue(1),
            ),
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),

           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: ()=>setValue(2),
               padding: EdgeInsets.all(10),
              color: Colors.orange,
              
              child: Text("2",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: ()=>setValue(3),
               padding: EdgeInsets.all(10),
               color: Colors.orange,
              
              child: Text("3",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: sumValue,
               padding: EdgeInsets.all(10),
              color: Colors.orange,
              
              child: Text("+",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
          
           
         ],
           
         ),


                /////////////////////////////// ACTING AS GAP ONLY  /////////////////>>>>>>>>>>>>>>>>>>>
         Container(
            margin: EdgeInsets.all(10),
         ),

         ///////////////////////////          SECOND ROW  /////////////////>>>>>>>>>>>>>>>>>>>

          Row( children: <Widget>[
           
           Container(
          margin: EdgeInsets.only(left: 14,right: 5,top: 5,bottom: 5),
           // color: Colors.red[200],
            child: FlatButton(
               onPressed: ()=>setValue(4),
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              child: Text("4",
              style: TextStyle(
                fontSize: 20,

              ),
              ), 
            ),
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),

           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: ()=>setValue(5),
               padding: EdgeInsets.all(10),
              color: Colors.orange,
              
              child: Text("5",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: ()=>setValue(6),
               padding: EdgeInsets.all(10),
              color: Colors.orange,
              
              child: Text("6",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: null,
               padding: EdgeInsets.all(10),
              disabledColor: Colors.orange,
              
              child: Text("-",
              style: TextStyle(
                fontSize: 20,
              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ), 
         ],          
         ),
         ////////////////////////////////////////////  THIRD ROW ///////////>>>>>>>>>>>>>>>>>>>>
         Container(
            margin: EdgeInsets.all(10),
         ),

         ///////////////////////////          GAP ONLY  /////////////////>>>>>>>>>>>>>>>>>>>

          Row( children: <Widget>[
           
           Container(
          margin: EdgeInsets.only(left: 14,right: 5,top: 5,bottom: 5),
           // color: Colors.red[200],
            child: FlatButton(
               onPressed: ()=>setValue(7),
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              child: Text("7",
              style: TextStyle(
                fontSize: 20,

              ),
              ), 
            ),
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),

           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: ()=>setValue(8),
               padding: EdgeInsets.all(10),
              color: Colors.orange,
              
              child: Text("8",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: ()=>setValue(9),
               padding: EdgeInsets.all(10),
              color: Colors.orange,
              
              child: Text("9",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: null,
               padding: EdgeInsets.all(10),
              disabledColor: Colors.orange,
              
              child: Text("*",
              style: TextStyle(
                fontSize: 20,
              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ), 
         ],          
         ),
         ///////////////////////////////// THIRD ROW ////>>>>>>>>>>>>>>>>>>>>>
         Container(
            margin: EdgeInsets.all(10),
         ),

         ///////////////////////////          GAP ONLY  /////////////////>>>>>>>>>>>>>>>>>>>

         Container(
           //color: Colors.pink[200],
           margin: EdgeInsets.only(right: 12),
           child:  Row( 
             //mainAxisSize: MainAxisSize.min,
             mainAxisAlignment: MainAxisAlignment.end,
             
             children: <Widget>[
           //  Flexible( 
               
               Container(
             
          margin: EdgeInsets.only(left: 14,right: 5,top: 5,bottom: 5),
          
          
           // color: Colors.red[200],
            child: FlatButton(
               onPressed: ()=>setValue(0),
              padding: EdgeInsets.all(10),
              color: Colors.orange,
              child: Text("0",
              style: TextStyle(
                fontSize: 20,

              ),
              ), 
            ),
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),

        
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: null,
               padding: EdgeInsets.all(10),
              disabledColor: Colors.orange,
              
              child: Text(">",
              style: TextStyle(
                fontSize: 20,

              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
           Container(
             margin: EdgeInsets.all(5),
            child:  FlatButton(
               onPressed: null,
               padding: EdgeInsets.all(10),
              disabledColor: Colors.orange,
              
              child: Text("/",
              style: TextStyle(
                fontSize: 20,
              ),
              ),
           ),
            decoration: BoxDecoration(
             shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(
                blurRadius: 2.0
              )]
           ),
           ),
         //    )
            
         ],          
         ),
         )
          
        ],
      ),  
      ),


    );
  }

}