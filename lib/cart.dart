import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/payment.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  List images=['images/img_9.png','images/img_10.png','images/img_11.png',];
  List name=["Rice","Kerosene","Sugar",];
  List quantity=["2kg","1ltr","1kg",];
  List price=["1","10","5"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.blueAccent,

        title: Text("CART"),
      ),
      body:
      Column(
        children: [
          Expanded(
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
                                    Text(name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Quantity:"+quantity[index]),
                                    Text("Rs: "+price[index])

                                  ],
                                ),




                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 100,

                                      child: Padding(padding:
                                      EdgeInsets.all(4.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  ),

                                      ),

                                    ),
                                  ],
                                ),

                                IconButton(onPressed: (){}, icon: Icon(Icons.delete,
                                  color: Colors.red,)),
                              ],

                            )
                          ]

                      )



                  );


                }
            ),



          ),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));

          }, child: Text("Buy Now"))
        ],
      ),



    );
  }
}