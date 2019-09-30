import 'package:flutter/material.dart';
import 'screen3.dart';
import 'package:car_insurance_system/brain.dart';
import 'package:car_insurance_system/constant.dart';
import 'reusable_card.dart';

class resultPage extends StatelessWidget {

  resultPage({@required this.isuran/*, @required this.depri, @required this.discoun, @required this.insuTYpe*/});

  final double isuran;
  /*final double depri;
  final double discoun;
  final double insuTYpe;*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                 child: Text(
                  'Your Invoice',
                  //style: kTitleTextStyle,
                  ),
                ),
              ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'hi',
                      //isuran.toString(),
                      style: kResultTextStyle,
                    ),
                    /*Text(
                      isuran.toString(),
                      style: kBMITextStyle,
                    ),*/
                    /*Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                      ),   */                   
                    ],
                  ),
                ),
              ),
          ],
    ),
    );
  }
}

            /*BottomButton(
              buttonTitle: 'PAYMENT',
              onTap: (){
                Navigator.pop(context);
             },
          ),
        ],
      ),
    );
  }
}*/