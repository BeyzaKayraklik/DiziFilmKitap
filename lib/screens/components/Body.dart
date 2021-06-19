import 'package:flutter/material.dart';


import 'package:my_library/components/Rounded_button.dart';
import 'package:my_library/screens/login/login_screen.dart';
import 'package:my_library/screens/sign_up/signup_screen.dart';


import '../constants.dart';
import 'Background.dart' ;


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Background(
        child : SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       Text(" Dizi&Film Uygulamasına Hoşgeldiniz ",
       style: TextStyle( color: Colors.black,
           fontFamily: "Ramabhadra",
           fontWeight: FontWeight.bold,
         height: 3.0 ,
          ),
       ),
          SizedBox(height: size.height*0.03),
          Image.asset("assets/images/moviebook5.png",
                height: size.height*0.45,
                  ),
          SizedBox(height: size.height*0.05),

          RoundedButton(
            text: "LOGIN",
            press: (){Navigator.push(context,
                MaterialPageRoute(
                builder: (context){return LoginScreen();
                },),);},

          ),
          RoundedButton(

            text: "SIGN UP",
            color: kPrimaryLightColor,
            textColor:  Colors.white,
            press: (){Navigator.push(context,
              MaterialPageRoute(
                builder: (context){return SignUpScreen();
                },),);

            },


          )
          




      ],
    ),
        ),
    );
  }
}



