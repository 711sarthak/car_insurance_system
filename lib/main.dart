import 'package:car_insurance_system/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:car_insurance_system/screens/screen0.dart';
import 'package:car_insurance_system/screens/screen1.dart';
import 'package:car_insurance_system/screens/screen2.dart';
import 'package:car_insurance_system/screens/screen3.dart';
import 'package:car_insurance_system/screens/screen4.dart';
import 'package:car_insurance_system/screens/screen5A.dart';
import 'package:car_insurance_system/screens/screen5B.dart';
import 'package:car_insurance_system/screens/screen6.dart';
import 'screens/trial.dart';

void main() => runApp(CarInsurance());

class CarInsurance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CAR INSURANCE',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        //'/': (context) => cardPay(),
        '/': (context) => logSign(),

        '/first': (context) => logInPage(),
        '/second': (context) => signUpPage(),
        '/third': (context) => homeScr(),
        '/forth': (context) => payment(),
        '/fifthA': (context) => card(),
        '/fifthB': (context) => cash(),
        //'/sixth': (context) => resultPage(),
      },
      //home: logSign(),
    );
  }
}

