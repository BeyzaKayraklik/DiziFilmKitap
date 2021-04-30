import 'package:flutter/material.dart';
import 'package:my_library/diziler.dart';
import 'package:my_library/hakkinda.dart';
import 'package:my_library/main.dart';
import 'package:my_library/rndmDizi.dart';
import 'package:my_library/rndmFilm.dart';

import 'filmler.dart';
import 'kitaplar.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
           backgroundColor: Colors.white,
            appBar: AppBar(title: Text("Anasayfa"),
              backgroundColor: Colors.red[900],),
            body: Center(
              child:Column(
               mainAxisAlignment:MainAxisAlignment.center,
                children:<Widget>[

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:Colors.red[900],
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyLibrary()),
                      ),
                      child: Text('Yazar Kitap Eşleştirme Soruları'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:Colors.red[900],
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Dizi()),
                      ),
                      child: Text('Dizi Tavsiyeleri'),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:Colors.red[900],
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => rndmDizi()),
                      ),
                      child: Text('Random Dizi'),
                    ),
                  ),




                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:Colors.red[900],
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Film()),
                      ),
                      child: Text('Film Tavsiyeleri'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:Colors.red[900],
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => rndmFilm()),
                      ),
                      child: Text('Random Film '),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:Colors.red[900],
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kitap()),
                      ),
                      child: Text('Kitap Tavsiyeleri'),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:Colors.red[900],
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hakkinda()),
                      ),
                      child: Text('Hakkında'),
                    ),
                  ),
                  ],
              ),
            )));
  }
}

