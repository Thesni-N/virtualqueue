import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/success.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  TextEditingController amountController=TextEditingController();
  TextEditingController cardnumController=TextEditingController();
  TextEditingController expiryController=TextEditingController();
  TextEditingController cvvController=TextEditingController();


  String value="";
  String i="";
  final List paymentLabels=[
    'Credi card/ Debit card',
    'cash on delivery',
    'Google pay',
  ];
  final List paymentIcons=[
    Icons.credit_card,
    Icons.money_off,
    Icons.account_balance_wallet,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('payment'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8),
              child:Text(
                  'choose your payment method',

                  style:TextStyle(fontSize: 28.0)
              ),
            ),

            Card(
              color: Colors.grey,
              child: Column(
                children: [
                  RadioListTile(
                      title: Text(
                        'Credit Card',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      value: 'credit',
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text(
                        'Debit Card',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      value: 'debit',
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text(
                        'UPI',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      value: 'upi',
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: Text(
                        'Cash On Delivery',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      value: 'cash on delivery',
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      }),
                ],
              ),
            ),


            Column(

              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Amount',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        )
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15,),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Debit/Credit Card details',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: cardnumController,
                decoration: InputDecoration(
                    labelText: 'Card Number',
                    labelStyle: TextStyle(fontSize: 18),
                    hintText: 'Enter Card Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22)
                    )
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: expiryController,
                      decoration: InputDecoration(
                          labelText: 'Expiry Date',
                          labelStyle: TextStyle(fontSize: 18),
                          hintText: 'MM/YY',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22)
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: TextFormField(
                      controller: cvvController,
                      decoration: InputDecoration(
                        labelText: 'CVV',
                        labelStyle: TextStyle(fontSize: 18),
                        hintText: 'CVV',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22)
                        ),
                        // helperText: '3-digit code behind your card'
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Text('Your card information is safe and secure with us'),

            SizedBox(height: 20,),

            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>success()));

                },
                child: Text('pay',style: TextStyle(fontSize: 18),),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),fixedSize: Size(180, 53)),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),

    );


  }
  String ? payment;

}