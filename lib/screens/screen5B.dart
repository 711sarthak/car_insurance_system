import 'package:flutter/material.dart';

class cash extends StatefulWidget {
  @override
  _cashState createState() => _cashState();
}

class _cashState extends State<cash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[  
          Expanded(
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton(
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                          child: Text(
                            'BACK',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          ),
                        ),
                     ],
                   ),
                 ),     
              Expanded(
                              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      'PAYMENT RECIEVED',
                       style: TextStyle(
                       fontSize: 35.0,
                       color: Colors.black,
                        ),
                        ),
                      
                       ),
              ),
            Expanded(
              child: CircleAvatar(
                radius: 105.0,
                    backgroundImage: AssetImage('images/emoji.png'),
                ),
            ),
          Expanded(
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                    child: Text(
                      'INVOICE',
                       style: TextStyle(
                       fontSize: 35.0,
                       color: Colors.black,
                        ),
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                       ),
                       ),
                       Padding(
              padding: const EdgeInsets.all(11.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                child: Text(
                  '   EXIT   ',
                   style: TextStyle(
                   fontSize: 35.0,
                   color: Colors.black,
                    ),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/');
                    },
                   ),
                   ),
              ],
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