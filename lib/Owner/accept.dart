import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:login/Homepage.dart';
import 'package:login/Owner/allocatetime.dart';
import 'package:login/login.dart';
import 'package:login/volunteer/home.dart';
import 'package:login/welcome.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  DateTime selectedDate = DateTime.now();
  bool isObscurePassword = true;
  int currentTab = 2;
  final List<Widget> screen = [
    details(),

  ];

  Widget currentScreen = details();

  TextEditingController nameController = TextEditingController();
  TextEditingController _timecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
            ],
          ),
        ),

        appBar: AppBar(
          title: Text("Details"),

        ),

        body: /*Container(
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Column(
              children: [
                ExpansionTile(
                  title: Text('Priya'),
                  subtitle: Text('Sugar: 2kg'),
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 40,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => time()));
                      },
                      child: Text("Allocate Time", style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 40,),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));

                      },
                      child: Text("Allocate Token", style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));

                      },
                      child: Text("Submit", style: TextStyle(fontSize: 15,
                          letterSpacing: 2,
                          color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )*/
      Column(
        children:[
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Priya",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
          Row(
            children: [
              Text("Sugar  :"),
              Text("2 kg")
            ],
          ),
          Row(
            children: [
              Text("Rice  :"),
              Text("2 kg")
            ],
          ),
          Row(
            children: [
              Text("Wheat  :"),
              Text("4 pack")
            ],
          ),
          SizedBox(height: 15,),

          Align(
              alignment: Alignment.centerLeft,
              child: Text("Gopi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
          Row(
            children: [
              Text("Rice  :"),
              Text("3 kg")
            ],
          ),
          Row(
            children: [
              Text("Sugar :"),
              Text("2 kg")
            ],
          ),
          Row(
            children: [
              Text("Kerosene  :"),
              Text("2 ltr")
            ],
          ),
          SizedBox(height: 15,),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Suresh",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
          Row(
            children: [
              Text("Rice  :"),
              Text("3 kg")
            ],
          ),
          Row(
            children: [
              Text("Sugar :"),
              Text("2 kg")
            ],
          ),
          Row(
            children: [
              Text("Kerosene :"),
              Text("2 ltr")
            ],
          ),
    SizedBox(height: 10),
    TextFormField(
    controller: _timecontroller,
    readOnly: true,  //set it true, so that user will not able to edit text
    onTap: () async {
    TimeOfDay? pickedTime =  await showTimePicker(
    initialTime: TimeOfDay.now(),
    context: context,
    );

    if(pickedTime != null ){
    print(pickedTime.format(context));   //output 10:51 PM
    DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
    //converting to DateTime so that we can further format on different pattern.
    print(parsedTime); //output 1970-01-01 22:53:00.000
    String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
    print(formattedTime); //output 14:59:00
    //DateFormat() is from intl package, you can format the time on any pattern you need.

    setState(() {
    _timecontroller.text = formattedTime; //set the value of text field.
    });
    }else{
    print("Time is not selected");
    }
    },
    // controller: _vehicleNoController,
    style: TextStyle(color: Colors.black, fontSize: 18),
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5)),
    hintText: 'Time'),
    ),

        ]

      )
    );
  }
}
