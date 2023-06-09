import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Homepage.dart';

class RatingBarScreen extends StatefulWidget {
  const RatingBarScreen({Key? key}) : super(key: key);

  @override
  State<RatingBarScreen> createState() => _RatingBarScreenState();
}

class _RatingBarScreenState extends State<RatingBarScreen> {
  double emojiRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Feedback"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Emoji  Rating Bar',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 24.0,
            ),
            textAlign: TextAlign.center,
          ),
          Center(
            child: RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              allowHalfRating: false,
              unratedColor: Colors.grey,
              itemCount: 5,
              itemSize: 50.0,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              updateOnDrag: true,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Icon(
                      Icons.sentiment_very_dissatisfied,
                      color: emojiRating == 1 ? Colors.red : Colors.grey,
                    );
                  case 1:
                    return Icon(
                      Icons.sentiment_dissatisfied,
                      color: emojiRating == 2 ? Colors.redAccent : Colors.grey,
                    );
                  case 2:
                    return Icon(
                      Icons.sentiment_neutral,
                      color: emojiRating == 3 ? Colors.amber : Colors.grey,
                    );
                  case 3:
                    return Icon(
                      Icons.sentiment_satisfied,
                      color: emojiRating == 4 ? Colors.lightGreen : Colors.grey,
                    );
                  case 4:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: emojiRating == 5 ? Colors.green : Colors.grey,
                    );
                  default:
                    return Container();
                }
              },
              onRatingUpdate: (ratingvalue) {
                setState(() {
                  emojiRating = ratingvalue;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            emojiRating == 1
                ? "SICK"
                : emojiRating == 2
                ? "BAD"
                : emojiRating == 3
                ? "OKAY"
                : emojiRating == 4
                ? "GOOD"
                : emojiRating == 5
                ? "GREAT"
                : "",
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 24.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              maxLines: 7,
              decoration: InputDecoration(
                hintText: 'Please briefly describe your feedback',
                hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),

              ),

            ),
          ),SizedBox(height: 60,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
// _pressCreateAccountButton();
            },
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF31B5D9), Color(0xFF36D931)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                  constraints:
                  BoxConstraints(maxWidth: 100, minHeight: 50),
                  alignment: Alignment.center,
                  child: Text(
                    "Submit",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(0.0)),
          ),


        ],
      ),

    );
  }
}