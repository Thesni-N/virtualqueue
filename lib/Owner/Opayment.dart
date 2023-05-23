import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/Owner/accept.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  List name=["Priya","Gopi","suresh","Anoop"];
  List date=["18-2-2020","21-2-2020","10-5-2021","10-5-2021"];
  List amount=["200","100","50","100"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blueAccent,

          title: Text("Payment"),
        ),
        body:

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(


              itemCount: name.length,
              itemBuilder: (context, index) {

                return Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Name:  "+name[index],style: TextStyle(fontSize: 20,),),
                                    Text("Date:  "+date[index],style: TextStyle(fontSize: 18,),),
                                    Text("Amount:  "+amount[index],style: TextStyle(fontSize: 18,)),
                                  ]
                              ),




                            ],
                          ),

                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 100,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(5)
                                    ),

                                    child: Padding(padding:
                                    EdgeInsets.all(4.0),

                                    ),

                                  ),
                                ],
                              ),
                            ],

                          )
                        ]
                    )
                );
              }
          ),
        )
    );
  }
}