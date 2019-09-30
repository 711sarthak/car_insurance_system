import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class logSign extends StatefulWidget {
  @override
  _logSignState createState() => _logSignState();
}

class _logSignState extends State<logSign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[400],
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[             
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 90.0,
                    backgroundImage: AssetImage('images/carr.jpg'),
                    ),
                ),
                  
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'CAR INSURANCE',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Pacifico',
                        color: Colors.lime,
                      ),),
                  ),
                    
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FlatButton(
                        textColor: Colors.white70,
                        padding: EdgeInsets.all(10.0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: (){
                          Navigator.pushNamed(context, '/first');
                        },
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                           // backgroundColor: Colors.white10,
                            fontSize: 50.0,
                          ),
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FlatButton(
                        textColor: Colors.white70,
                        padding: EdgeInsets.all(10.0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: (){
                            Navigator.pushNamed(context, '/second');
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                           // backgroundColor: Colors.white10,
                            fontSize: 50.0,
                          ),
                          ),
                      ),
                    ),
                   ],
                   ),
             ),
        ),
            ), 
    );
  }
}