import 'package:flutter/material.dart';
import 'package:login/Owner/accept.dart';
class bookings extends StatefulWidget {
  const bookings({Key? key}) : super(key: key);

  @override
  State<bookings> createState() => _bookingsState();
}

class _bookingsState extends State<bookings> {

  List name=["Priya","Gopi","Suresh",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.blueAccent,

        title: Text("Bookings"),
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


                                    Text(name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

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
                                      width: 80,
                                      decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(padding:
                                      EdgeInsets.all(4.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:[

                                            ElevatedButton(onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>details()));

                                            }, child: Text("Click")),

                                          ],

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