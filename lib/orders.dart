import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class orders extends StatefulWidget {
  const orders({Key? key}) : super(key: key);

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {

  List images=['images/img_9.png','images/img_10.png','images/img_11.png','images/img_12.png',];
  List date=["delivered on april 05","delivered on april 05","delivered on May 22","delivered on May 22"];
 List name=["Rice","Kerosene","Sugar","Wheat",];
 List quantity=["2kg","1ltr","2kg","4kg",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blueAccent,

          title: Text("My orders"),
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

                              CircleAvatar(
                                radius: 60,

                                backgroundImage: AssetImage(images[index]),
                              ),
                              SizedBox(width: 30,),
                              Column(
                                children: [

                                  Text(date[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text(name[index],style: TextStyle(fontSize: 18,),),
                                  Text(quantity[index],style: TextStyle(fontSize: 18,)),
                                ]
                              ),




                            ],
                          ),
                        ]
                    )
                );
              }
          ),
        )
    );
  }
}