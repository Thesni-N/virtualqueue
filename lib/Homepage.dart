import 'package:flutter/material.dart';
import 'package:login/chats.dart';
import 'package:login/complaint.dart';
import 'package:login/complaint.dart';
import 'package:login/feedback.dart';
import 'package:login/login.dart';
import 'package:login/modelclass.dart';
import 'package:login/nearby.dart';
import 'package:login/orders.dart';
import 'package:login/payment.dart';
import 'package:login/products.dart';
import 'package:login/profile.dart';
import 'package:login/success.dart';
import 'package:login/welcome.dart';

  class Homescreen extends StatefulWidget {
    const Homescreen({Key? key}) : super(key: key);

    @override
    State<Homescreen> createState() => _HomescreenState();
  }

  class _HomescreenState extends State<Homescreen> {
    TextEditingController searchController=TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
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
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.grey[300],
                ),

                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none
                  ),
                ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>nearby()));

              },
              child: Column(
                children: [
                  new Image.asset('images/nearby.png',
                    height: 90,
                    width: 150,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 10,),
                  Text('Nearby Ration Shops',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>cartitemsample()));

                    },
                    child: Column(
                      children: [

                        new Image.asset('images/img_3.png',
                          height: 120,
                          width: 120,
                          alignment: Alignment.topCenter,fit: BoxFit.cover,
                        ),
                        Spacer(),
                        Text('Products',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>orders()));

                    },
                    child: Column(
                      children: [

                        new Image.asset('images/order.png',
                          height: 90,
                          width: 150,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 10,),
                        Text('My Orders',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
                    },
                    child: Column(
                      children: [

                        new Image.asset('images/pay.png',
                          height: 90,
                          width: 150,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 10,),
                        Text('Payments',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chats()));

                    },
                    child: Column(
                      children: [

                        new Image.asset('images/chat.png',
                          height: 90,
                          width: 150,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 10,),
                        Text('Chats',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
      appBar: AppBar(
          /*leading: IconButton(onPressed: () {

          }, icon: Icon(Icons.menu)),*/
          title: Text("HomePage"),
        ),
        drawer: Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Thesni shafeeq"),
              accountEmail: Text("Thesni977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "T",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),

      ListTile(
      leading: Icon(
      Icons.home,
      ),
      title: const Text('Home'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
      },
      ),
        ListTile(
          leading: Icon(
            Icons.person,
          ),
          title: const Text('Profile'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
          },
        ),
      ListTile(
      leading: Icon(
      Icons.task,
      ),
      title: const Text('Complaint'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Complaints()));
      },
      ),
        ListTile(
      leading: Icon(
        Icons.feedback,
      ),
      title: const Text('Feedback'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingBarScreen()));
      },
        ),
        ListTile(
      leading: Icon(
        Icons.logout,
      ),
      title: const Text('Logout'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      },
        ),
        ],
      ),
      ),


      );
    }
  }
