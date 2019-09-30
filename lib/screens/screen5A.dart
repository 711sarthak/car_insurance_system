import 'package:flutter/material.dart';

class card extends StatefulWidget {
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
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
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/card.jpg'),
                    ),
                ),
                  
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      'CARD DETAILS',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Pacifico',
                        color: Colors.lime,
                      ),
                      ),
                  ),
                    
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 38.0
                        ),
                        maxLength: 16,
                        decoration: InputDecoration(
                          labelText: 'Card No :',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 38.0
                        ),
                        decoration: InputDecoration(
                          labelText: 'Expiry Date :',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 38.0
                        ),
                        decoration: InputDecoration(
                          labelText: 'Card Holder Name :',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 38.0
                        ),
                        maxLength: 3,
                        decoration: InputDecoration(
                          labelText: 'CVV :',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                        onPressed: (){
                          Navigator.pushNamed(context, '/fifthB');
                        },
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            fontSize: 35.0,
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