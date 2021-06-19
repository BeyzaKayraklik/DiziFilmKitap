import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_library/components/Rounded_button.dart';
import 'package:my_library/components/already_have_an_account_acheck.dart';
import 'package:my_library/components/rounded_input_field.dart';
import 'package:my_library/components/rounded_password_field.dart';
import 'package:my_library/screens/home/home_screen.dart';
import 'package:my_library/screens/sign_up/signup_screen.dart';
import 'package:my_library/services/auth/auth_method.dart';

import 'package:provider/provider.dart';

import 'background.dart';
class Body extends StatelessWidget {
  Body({
    Key key,

  }) : super(key: key);
  String user_email = "";
  String user_password = "";

  FlutterFireAuthService _authService =FlutterFireAuthService();
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("LOGIN",
          style: TextStyle( color: Color(0xFFB71C1C),
            fontFamily: "Ramabhadra",
            fontWeight: FontWeight.bold,
          ),
          ),
            SizedBox(height: size.height*0.03),
            Image.asset("assets/images/moviebook5.png",
            height:size.height*0.35,),
            SizedBox(height: size.height*0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value){
                user_email = value;
              },
            ),
            RoundedPasswordField(onChanged: (value){
              user_password = value;
            },
            ),
            RoundedButton(
                text: "LOGIN",
                press: (){
                  // ignore: unnecessary_statements
                  (context
                      .read<FlutterFireAuthService>()
                      .logIn(user_email, user_password, context));
                 Navigator.push(
                     context,
                 MaterialPageRoute(
                   builder: (context){

                      return home() ;
            },),);}
            ),
            SizedBox(height: size.height*0.03),
            AlreadyHaveAccountCheck(press: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return SignUpScreen() ;
                  },
                ),
              );
              },
            ),
            ],
        ),
      ),
    );
  }
}








