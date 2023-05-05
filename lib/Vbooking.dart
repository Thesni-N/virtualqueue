import 'package:flutter/material.dart';
class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  List name=["Priya","Gopi","Suresh",];
  List address=["Narungalil(h) Tirur,Ozhur(po),Malappuram pincode:676303","Palakkal(h) Tirur,Tirur(po),Malappuram pincode:676307","Paatasherri(h) Parappanangadi,Neduva(po),Malappuram pincode:676306"];
  List amount=["60","70","50"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.blueAccent,

        title: Text("Details"),
      ),
      body:
      Column(
       // mainAxisAlignment: MainAxisAlignment.start,
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


                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [


                                    Text("Name:  " +name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Address:  " +address[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Amount:  "+amount[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
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
                                      decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(5)
                                      ),

                                      child: Padding(padding:
                                      EdgeInsets.all(4.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:[

                                              Text("Deliver")],

                                        ),

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



          ),

        ],
      ),



    );
  }
}