import 'package:flutter/material.dart';
import 'package:my_library/components/Rounded_button.dart';

import 'package:my_library/screens/home/body.dart';



class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          SizedBox(height: 10,),
          Image.asset(
        "assets/images/success2.png",
            height: 500,
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Success!",
                style: TextStyle(
                  color: Color(0xffe64550),
                  fontFamily: "Ramabhadra",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ) ,

              ),
            ],
          ),
          RoundedButton(
            text: "LOGIN",
            press: (){Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return Anasayfa2();},
              ),);},
          )
        ],
      ),
    );
  }
}
