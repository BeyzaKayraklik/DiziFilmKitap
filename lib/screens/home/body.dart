import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_library/Sayfalar/sayfa3.dart';

import 'package:my_library/izlenecekler/screens/izleniceklist.dart';
import 'package:my_library/merakl%C4%B1s%C4%B1na/kitapokumaoran%C4%B1.dart';
import 'package:my_library/screens/home/components/background.dart';
import 'package:my_library/sorular/mylibrary.dart';
import 'package:my_library/yorumlar/yorumdart.dart';

import '../../../hakkinda.dart';







class Anasayfa2 extends StatelessWidget {
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
                        MaterialPageRoute(builder: (context) => soruSayfasi()),
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
                        MaterialPageRoute(builder: (context) =>AnaSayfa3()),
                      ),
                      child: Text('Öneriler'),
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
                        MaterialPageRoute(builder: (context) => yorumlar()),
                      ),
                      child: Text('Yorumlar'),
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
                        MaterialPageRoute(builder: (context) => izleniceklists()),
                      ),
                      child: Text('İzlenecekler'),
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
                        MaterialPageRoute(builder: (context) => kitapokumaoran()),
                      ),
                      child: Text('Dünya kitap okuma oranı(%)'),
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
            );
  }
}

