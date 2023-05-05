import 'package:flutter/material.dart';
import 'package:login/complaint.dart';
class Complaints extends StatefulWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Complaints")),
    body: ListView.builder(
    itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: const Icon(Icons.list),
              trailing: const Text(
                "20-4-2022",
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
              title: Text("Complaint data Complaint data Complaint data Complaint data"));
        }),
    floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    floatingActionButton: FloatingActionButton(
    // isExtended: true,
    child: Icon(Icons.add),
    backgroundColor: Colors.blue,
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Complaint()));

    setState(() {
    i++;
    });
    },
    ),
    );
  }
}


