import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/signup.png'),
                    ),
                ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'SIGN UP',
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
                        decoration: InputDecoration(
                          labelText: 'Vehical No. :',
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
                          labelText: 'Name :',
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
                          labelText: 'E-Mail :',
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
                          labelText: 'Mobile No. :',
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
                          labelText: 'Create Password :',
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: RaisedButton(
                        //padding: EdgeInsets.all(10.0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                        onPressed: (){
                          Navigator.pushNamed(context, '/third');
                        },
                        child: Text(
                          'Sign Up',
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