import 'package:flutter/material.dart';
import 'package:login/Owner/Opayment.dart';
import 'package:login/Vbooking.dart';
import 'package:login/login.dart';
import 'package:login/volunteer/vlogin.dart';
import 'package:login/volunteer/vprofile.dart';
class homes extends StatefulWidget {
  const homes({Key? key}) : super(key: key);

  @override
  State<homes> createState() => _homesState();
}

class _homesState extends State<homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.blueAccent,

        title: Text("Homepage"),
      ),

      body: Container(
          child:Padding(
            padding:const EdgeInsets.all(20),
            child:
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: MediaQuery.of(context).size.width,


                  ),

                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0,17),
                                  blurRadius: 17,
                                  spreadRadius: -23
                              )
                            ]
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));

                            },
                            child: Column(
                              children: [
                                new Image.asset('',
                                  height: 100,
                                  width: 150,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(height: 30,),
                                Text('Booking',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                              ],
                            ),
                          ),
                        ),
                      ),


                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0,17),
                                  blurRadius: 17,
                                  spreadRadius: -23
                              )
                            ]
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));

                            },
                            child: Column(
                              children: [

                                new Image.asset('',
                                  height: 100,
                                  width: 120,
                                  alignment: Alignment.topCenter,fit: BoxFit.cover,
                                ),
                                SizedBox(height: 30,),
                                Text('Payment',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                              ],
                            ),
                          ),
                        ),
                      ),




                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0,17),
                                  blurRadius: 17,
                                  spreadRadius: -23
                              )
                            ]
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                            },
                            child: Column(
                              children: [

                                new Image.asset('',
                                  height: 100,
                                  width: 150,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(height: 30,),

                                Text('Add User',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),

    );
  }
}
