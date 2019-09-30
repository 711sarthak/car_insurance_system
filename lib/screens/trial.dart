/*import 'package:flutter/material.dart';
import 'package:square_in_app_payments/in_app_payments.dart';
import 'package:square_in_app_payments/models.dart';

class cardPay extends StatefulWidget {
  @override
  _cardPayState createState() => _cardPayState();
}

class _cardPayState extends State<cardPay> {
  
  void _pay(){
    InAppPayments.setSquareApplicationId('sandbox-sq0idb-SqjLA_24u-dtMjwkLeWdMQ');
    InAppPayments.startCardEntryFlow(
      onCardNonceRequestSuccess: _cardNonceRequestSuccess,
      onCardEntryCancel: _cardEntryCancel,
    );
  }

  void _cardEntryCancel(){

  }

  void _cardNonceRequestSuccess(CardDetails result){
    print(result.nonce);
    InAppPayments.completeCardEntry(
      onCardEntryComplete: _cardEntryComplete,
    );

  }
  void _cardEntryComplete(){

  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Payment Window',),
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(
              'Make a Payment',
              
            ),
          ],),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: _pay,
          tooltip: 'Payment',
          child: Icon(Icons.payment),
        ),
    );
  
  }
}*/