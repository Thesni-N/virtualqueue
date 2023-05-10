import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/Owner/accept.dart';

class adduser extends StatefulWidget {
  const adduser({Key? key}) : super(key: key);

  @override
  State<adduser> createState() => _adduserState();
}

class _adduserState extends State<adduser> {

  List name=["Ashraf","Sumesh","Anoop",];
  List place=["Malappuarm","Parappanangadi","Tirur",];
  List rationid=["0612678095","0600012763","1247430178",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blueAccent,

          title: Text("Add User"),
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
                              SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Name: "+name[index],style: TextStyle(fontSize: 20,),),
                                    Text("Place: "+place[index],style: TextStyle(fontSize: 18,),),
                                    Text("Card No: "+rationid[index],style: TextStyle(fontSize: 18,)),
                                  ]
                              ),




                            ],
                          ),

                          Row(
                            children: [
                              Column(

                                children: [
                                  Container(
                                    height: 45,
                                    width: 100,
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(5)
                                    ),

                                    child: Padding(padding:
                                    EdgeInsets.all(4.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[

                                          ElevatedButton(onPressed: (){
                                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>accept()));


                                          }, child: Text("Accept")),
                                          ElevatedButton(onPressed: (){

                                          }, child: Text("Reject"))
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
        )
    );
  }
}