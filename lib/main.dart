import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value = 0.0;
  void _onchange(double value){
    setState(() {
      _value=value;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),
      body:Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
              children: [

          Slider(value: _value, onChanged: _onchange),
       Container(
         padding: EdgeInsets.all(32.0),
         child: LinearProgressIndicator(
           value: _value,
           valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
         ),
       ),
                Container(
                  padding: EdgeInsets.all(32.0),
                  child: CircularProgressIndicator(
                    value: _value,
                  )
                )
          ],
        ),
      ),

    )
    );
  }

}
