import 'package:flutter/material.dart';
import 'package:car_insurance_system/constant.dart';
import 'package:car_insurance_system/components/reusable_card.dart';
import 'package:car_insurance_system/components/Bottom_Button.dart';

class invoice extends StatefulWidget {
  @override
  _invoiceState createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
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
                        padding: const EdgeInsets.all(2.5),
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
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'YOUR INVOICE',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Pacifico',
                          color: Colors.black,
                        ),),
                    ),
                  ),
                    







                    Expanded(
                       child: Padding(
                        padding: const EdgeInsets.all(99.0),
                        child: RaisedButton(
                          textColor: Colors.white70,
                          padding: EdgeInsets.all(10.0),
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: (){
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'EXIT',
                            style: TextStyle(
                             // backgroundColor: Colors.white10,
                              fontSize: 50.0,
                              color: Colors.black,
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