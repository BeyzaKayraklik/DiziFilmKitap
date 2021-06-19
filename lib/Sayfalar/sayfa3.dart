import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_library/%C3%B6neriler/dizi.dart';
import 'package:my_library/%C3%B6neriler/film.dart';
import 'package:my_library/%C3%B6neriler/kitap.dart';
import 'package:my_library/%C3%B6neriler/randomdizi.dart';
import 'package:my_library/%C3%B6neriler/randomfilm.dart';
import 'package:my_library/afis/afis.dart';

import 'package:my_library/Sayfalar/background.dart';



class AnaSayfa3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(

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
                        MaterialPageRoute(builder: (context) => afis()),
                      ),
                      child: Text(' Haftanın Filmi '),
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
                        MaterialPageRoute(builder: (context) => Dizi()),
                      ),
                      child: Text(' Dizi Önerileri '),
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
                      child: Text(' Random Dizi Önerisi '),
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
                        MaterialPageRoute(builder: (context) =>Film()),
                      ),
                      child: Text(' Film Önerileri '),
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
                      child: Text(' Random Film Önerisi '),
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
                      child: Text(' Kitap Önerileri '),
                    ),
                  ),








                ],
              ),
            );
  }
}

