import 'package:flutter/material.dart';


class logInPage extends StatefulWidget {
  @override
  _logInPageState createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {

  final formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[400],
        body: Center(
          child: SafeArea(
            child: Form(
              key: formKey,
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
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/login.png'),
                    ),
                ),
                  
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Pacifico',
                        color: Colors.lime,
                      ),
                      ),
                  ),
                    
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      
                      child: TextFormField(
                        
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 38.0
                        ),
                        decoration: InputDecoration(
                          labelText: 'E-Mail:',
                          border: OutlineInputBorder()
                        ),
                        
                        validator: (input) => !input.contains('@') ? 'Not a Valid Email' : null,
                        onSaved: (input) => _email = input,                    
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 38.0
                        ),
                        decoration: InputDecoration(
                          labelText: 'Password:',
                          border: OutlineInputBorder()
                        ),
                        validator: (input) => input.length<8 ? 'length must be greater than 8 characters' : null,
                        onSaved: (input) => _password = input,
                        obscureText: true,
                      ),
                    ),
                    
                    Padding(
                      
                      padding: const EdgeInsets.all(30.0),
                      child: RaisedButton(
                        //textColor: Colors.white70,
                        padding: EdgeInsets.all(10.0),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(17.0)),
                        onPressed: _submit,
                        
                        child: Text(
                          'Sign In',
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
      ),    
    );  
}
    void _submit(){
      if(formKey.currentState.validate()){
        formKey.currentState.save();
      }
  }

}
