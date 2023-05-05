// import 'package:flutter/material.dart';
// class Nearby extends StatefulWidget {
//   const Nearby({Key? key}) : super(key: key);
//
//   @override
//   State<Nearby> createState() => _NearbyState();
// }
//
// class _NearbyState extends State<Nearby> {
//   @override
//   Widget build(BuildContext context) {
//     var size=MediaQuery.of(context).size;
//     return Scaffold(
//
//         appBar: AppBar(
//         title: Text(Nearby Ration Shops'),
//     ),
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class nearby extends StatefulWidget {
  const nearby({Key? key}) : super(key: key);

  @override
  State<nearby> createState() => _nearbyState();
}

class _nearbyState extends State<nearby> {

  List ration=["20421404","20425460","30125680","21548903"];
  List dealername=["Ramesh","Sumesh","Gupta","Ganesh"];
  List distance=["2.35KM","2.48KM","3KM","3.56KM"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.blueAccent,

          title: Text("Nearby Ration Shops"),
        ),
      body:
      Column(
        children: [
          Expanded(
            child: ListView.builder(

                itemCount: ration.length,
                itemBuilder: (context, index) {

                  return Card(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [


                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [


                                    Text("Fps ID:  " +ration[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Dealer Name:  " +dealername[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Distance:  "+distance[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                  ],
                                ),




                              ],
                            ),

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