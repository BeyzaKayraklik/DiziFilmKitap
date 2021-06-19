import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_library/screens/constants.dart';
import 'package:my_library/screens/home/body.dart';
import 'package:my_library/screens/welcome/welcome_screen.dart';
import 'package:my_library/services/auth/auth_method.dart';

import 'package:provider/provider.dart';





void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,

    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          Provider<FlutterFireAuthService>(create: (_)=> FlutterFireAuthService(),
          ),
          StreamProvider(create: (context)=>
          context.read<FlutterFireAuthService>().authStateChanges,
              initialData: null
          ),

        ],
        child: MaterialApp(

          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Color(0xFFF5EBE9),

          ),
          home:WelcomeScreen(),
        )
    );

  }
}

class MyLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFF5EBE9)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Anasayfa2(),
                ))));



  }
}



