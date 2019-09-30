import 'package:car_insurance_system/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:car_insurance_system/components/Bottom_Button.dart';
import 'package:car_insurance_system/brain.dart';
import 'screen6.dart';
import 'result.dart';

class homeScr extends StatefulWidget {
  @override
  _homeScrState createState() => _homeScrState();
}
class _homeScrState extends State<homeScr> {
  
  String dropCType = "Car Type";
  String tempCtype = ' ';
  String dropEType = "Engine Capacity";
  String tempEtype = ' ';
  String dropAge = "Time in yrs";
  String tempAge = ' ';
  String dropCov = "Insurance Type";
  String tempCov = ' ';
  String priceOfCar = 'Price Range';
  String orgPrice;
  String dropDisc = 'Discounts';
  String discTemp = ' ';
  int Result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Car Insurance Calculator'),
         backgroundColor: Colors.teal[800],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(                 
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropCType,
                        onChanged: (String newValue) {
                           tempCtype = newValue;
                          setState(() {
                            dropCType = newValue;
                          });
                        },
                        items: <String>['Car Type','HatchBack', 'Sedan', 'SUV                  ']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                          ),
                          );
                          })
                          .toList(),
                        ),
                      ),
                    ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 12, 50, 12),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                        decoration: InputDecoration(
                          labelText: 'Price',
                          border: OutlineInputBorder()
                        ),
                        validator: (input) => !input.contains('0') ? null : 'Please enter a valid amt',
                        onSaved: (input) => orgPrice = input,                    
                      ),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropEType,
                        onChanged: (String newValue) {
                          tempEtype = newValue;
                          setState(() {
                            dropEType = newValue;
                          });
                        },
                        items: <String>['Engine Capacity','<=1000cc', '<=2000cc', '<=3000cc         ']
                        .map<DropdownMenuItem<String>>((String value) {
                          //log(value);
                          return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                          ),
                          );
                          },)                        
                          .toList(),
                        ),
                      ),
                    ),
                ),
                Expanded(                 
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropAge,
                        onChanged: (String newValue) {
                          tempAge = newValue;
                          setState(() {
                            dropAge = newValue;
                          });
                        },
                        items: <String>['Time in yrs','0-1 yrs', '1-2 yrs', '2-3 yrs','3-4 yrs','4-5 yrs              ']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                          ),
                          );
                          })
                          .toList(),
                        ),
                      ),
                    ),
                ),
                Expanded(                 
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropDisc,
                        onChanged: (String newValue) {
                          discTemp = newValue;
                          setState(() {
                            dropDisc = newValue;
                          });
                        },
                        items: <String>['Discounts','0%', '5%', '10%','15%','20%                ']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                          ),
                          );
                          })
                          .toList(),
                        ),
                      ),
                    ),
                ),
                Expanded(                 
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropCov,
                        onChanged: (String newValue) {
                          tempCov = newValue;
                          setState(() {
                            dropCov = newValue;
                          });
                        },
                        items: <String>['Insurance Type','3rd party', 'comprehensive']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                            style: TextStyle(
                              fontSize: 20.0,
                              ),
                          ),
                          );
                          })
                          .toList(),
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
        BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(
                ec: tempEtype,
                ty: tempAge,
                dis: discTemp,
                it: tempCov,
                orgPri: orgPrice,
                );
               Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => resultPage(
                     isuran: calc.main(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


