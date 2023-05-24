import 'package:flutter/material.dart';
import 'package:login/login.dart';

class owner extends StatefulWidget {
  @override
  State<owner> createState() => _ownerState();
}

class _ownerState extends State<owner> {
  @override
  String _selected='';

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text ("Sign up", style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20,),
              Text("Create an Account,Its free",style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 40
                ),
                child: Column(
                  children: [
                    makeInput(label: "ShopDealer_Name"),
                    makeInput(label: "Email address"),
                    makeInput(label: "Phone Number"),
                    makeInput(label: "FPS ID"),
                    makeInput(label: "Location"),
                    makeInput(label: "Password",obsureText: true),


                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: EdgeInsets.only(top: 3,left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),

                  ),

                  child: MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

                    },
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29)
                    ),
                    child: Text("Sign Up",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 16,

                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",style: TextStyle(fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

                  }, child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.w600, ),) ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}
