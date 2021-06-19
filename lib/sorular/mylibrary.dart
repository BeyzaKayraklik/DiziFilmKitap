


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_library/screens/home/body.dart';
import 'package:my_library/sorular/test_veri.dart';


class soruSayfasi extends StatefulWidget {
  @override
  _soruSayfasiState createState() => _soruSayfasiState();
}

class _soruSayfasiState extends State<soruSayfasi> {

  List <Widget> secimler=[];

  TestVeri test1=TestVeri();

  int dogrular=0;

  void buttonFonksiyonu(bool secilenbuton){

    if(test1.testbittimi()==true) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Oyunu Oynadığınız İçin Teşekkürler :) "),
            content: new Text("Puanınız: $dogrular / 10"),
            actions: <Widget>[
              // ignore: deprecated_member_use
              new FlatButton(
                child: new Text("Anasayfaya Dön"),
                onPressed: () =>
                    Navigator.push(

                      context,
                      MaterialPageRoute(builder: (context) => Anasayfa2()),
                    ),

              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        test1.getSoruyaniti() == secilenbuton ?
        secimler.add(dogruIcon) : secimler.add(yanlisIcon);

        test1.getSoruyaniti()==secilenbuton?dogrular++ :dogrular;

        test1.sonrakisoru();
      });
    }
  }



  @override
  Widget build(BuildContext context) {

    return Column(
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test1.getSorumetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red[100],
                ),
              ),
            ),
          ),
        ),
        Wrap(
          spacing:3,
          runSpacing: 3,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.clear,
                            size: 30.0,
                          ),
                          onPressed: (){

                            buttonFonksiyonu(false);
                          }
                      ),


                    )),


                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.check_outlined, size: 30.0),
                          onPressed: () {
                            buttonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }

}

class Soru {
  String soruMetni;
  bool soruYaniti;


  Soru({this.soruMetni,this.soruYaniti});
}



var dogruIcon =Icon(Icons.mood , color:Colors.green);
var yanlisIcon = Icon(Icons.mood_bad , color:Colors.red);
