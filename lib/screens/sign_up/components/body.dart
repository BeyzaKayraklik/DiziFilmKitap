import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_library/components/Rounded_button.dart';
import 'package:my_library/components/already_have_an_account_acheck.dart';
import 'package:my_library/components/rounded_input_field.dart';
import 'package:my_library/components/rounded_password_field.dart';
import 'package:my_library/screens/login/login_screen.dart';
import 'package:my_library/screens/sign_up/components/social_icon.dart';
import 'package:my_library/screens/signup_ok/sign.dart';
import 'package:my_library/services/auth/auth_method.dart';

import 'package:provider/provider.dart';

import 'background.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  final Widget child;
  String user_email = "";
  String user_password = "";

  FlutterFireAuthService _authService =FlutterFireAuthService();
    Body({
    Key key,
    @ required this.child
  }) :super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("SIGN UP",
              style: TextStyle(
                color: Color(0xffe64550),
                fontFamily: "Ramabhadra",
                fontWeight: FontWeight.bold,
              ) ,
            ),
            SizedBox(height: size.height*0.01,),
            Image.asset("assets/images/moviebook5.png",
              height: size.height*0.3,
            ),
            RoundedInputField(hintText: "Your Email",
            onChanged: (value){
              user_email = value;
            },

            ),
            RoundedPasswordField(
              onChanged: (value){
                user_password = value;
              },

            ),
            RoundedButton(
              text: "SIGN UP",
              press: (
                  ){
                context
                    .read<FlutterFireAuthService>()
                    .createAccount( user_email, user_password);
                Navigator.push(context,
                      MaterialPageRoute(
                    builder: (context){
                     return Sign();},
            ),);},),
            SizedBox(height: size.height*0.01,),
            AlreadyHaveAccountCheck(
              login: false,
              press: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                return LoginScreen();
              },
                  ),
              );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(iconSrc: "assets/icons/facebook.svg",
                press: (){},),
                SocalIcon(iconSrc: "assets/icons/twitter.svg",
                  press: (){},),
                SocalIcon(iconSrc: "assets/icons/google-plus.svg",
                  press: (){},)
              ],
            ),
          ],
        ),
      ),);
  }
}



