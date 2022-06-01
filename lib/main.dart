import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviepicker/page3.dart';
import 'package:moviepicker/page4.dart';
import 'package:moviepicker/second_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(backgroundColor: Colors.pink[800],appBar:
    AppBar(backgroundColor: Colors.pink[700],
      elevation: 50,
      titleSpacing: 40  ,
      title: Text("movie picker",style: TextStyle(fontSize: 40),),
      leading:IconButton(icon: Icon(Icons.menu),iconSize: 30,
        onPressed: (){},),
      actions: [
        IconButton(icon: Icon(Icons.search),
        onPressed: (){},
        iconSize: 30,)
      ],),
    body: bodyApp(),),);
  }
}
class bodyApp extends StatelessWidget {
  const bodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15.0),

            child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Container(
                    child: Column(mainAxisAlignment: MainAxisAlignment.start

                      ,children: [
                      Text('Fight club',style: TextStyle(fontSize: 50,),),
                      SizedBox(height: 35),
                      Text('The rate :8.8/10',style: TextStyle(fontSize: 20),),
                      SizedBox(height: 15),
                      Text('Drama',style: TextStyle(fontSize: 20),),
                      SizedBox(height: 15),
                      RaisedButton(child: Text('details'),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> second_page()));
                      },color: Colors.indigo[700],),
                    ],),
                  ),

                SizedBox(child: Image.asset('assets/download.jpg'),height: 230,width:240)
                ],),
          color: Colors.deepPurple[600],
          width: 1600,
          height: 230,),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15.0),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.start

                  ,children: [
                    Text('Inception',style: TextStyle(fontSize: 50,),),
                    SizedBox(height: 35),
                    Text('The rate :8.8/10',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 15),
                    Text('Adventure    Action    Sci-Fi',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 15),
                    RaisedButton(child: Text('details'),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> third_page()));
                      },color: Colors.indigo[700],),
                  ],),
              ),

              SizedBox(child: Image.asset('assets/inception.jpg'),height: 230,width:240 ,)
            ],),
            color: Colors.pinkAccent[700],
            width: 1600,
            height: 230,),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15.0),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.start

                  ,children: [
                    Text('Interstellar',style: TextStyle(fontSize: 50,),),
                    SizedBox(height: 35),
                    Text('The rate :8.6/10',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 15),
                    Text('Drama    Action    Sci-Fi',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 15),
                    RaisedButton(child: Text('details'),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> forth_page()));
                      },color: Colors.indigo[700],),
                  ],),
              ),

              SizedBox(child: Image.asset('assets/Interstellar.jpg'),height: 230,width:240 ,)
            ],),
            color: Colors.purple[700],
            width: 1600,
            height: 230,)
        ],
      ),
    );
  }
}

