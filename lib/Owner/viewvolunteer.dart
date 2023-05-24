import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/Owner/accept.dart';

class viewvolunteer extends StatefulWidget {
  const viewvolunteer({Key? key}) : super(key: key);

  @override
  State<viewvolunteer> createState() => _viewvolunteerState();
}

class _viewvolunteerState extends State<viewvolunteer> {

  List name=["Ashraf","Sumesh","Anoop",];
  List contactnumber=["7356425149","9895431097","9746210429"];
  List place=["Malappuarm","Parappanangadi","Tirur",];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blueAccent,


        ),
        body:

        ListView.builder(


            itemCount: name.length,
            itemBuilder: (context, index) {

              return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Name: "+name[index],style: TextStyle(fontSize: 20,),),
                                Text("Contact Number: "+contactnumber[index],style: TextStyle(fontSize: 18,),),
                                Text("Place: "+place[index],style: TextStyle(fontSize: 18,)),
                              ]
                          ),
                        ),
                        SizedBox(width: 10,),

                        Row(
                          children: [
                            Row(
                              children:[

                                ElevatedButton(onPressed: (){
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>accept()));


                                }, child: Text("Accept")),
                                SizedBox(width: 5,),
                                ElevatedButton(onPressed: (){

                                }, child: Text("Reject"))
                              ],

                            ),
                          ],

                        )
                      ]
                  )
              );
            }
        )
    );
  }
}