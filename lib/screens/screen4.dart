import 'package:flutter/material.dart';


class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
                    padding: const EdgeInsets.all(30.0),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/payment.png'),
                      ),
                  ),
                ),
                  
                  Expanded(
                                      child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'PAYMENT',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Pacifico',
                          color: Colors.lime,
                        ),
                        ),
                    ),
                  ),
                    Expanded(
                                          child: Padding(                      
                        padding: const EdgeInsets.all(50.0),
                        child: RaisedButton(
                         // padding: EdgeInsets.all(10.0),
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                          onPressed: (){
                            Navigator.pushNamed(context, '/fifthA');
                          },
                          child: Text(
                            'CARD',
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
                            ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                                          child: Padding(                      
                        padding: const EdgeInsets.all(50.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(10.0),
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                          onPressed: (){
                            Navigator.pushNamed(context, '/fifthB');
                          },
                          child: Text(
                            'CASH',
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
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