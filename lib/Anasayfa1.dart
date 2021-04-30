import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_library/Anasayfa.dart';




class AnaSayfa1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

        appBar: AppBar(title: Text("                            Hoşgeldin" ),
    backgroundColor: Colors.red[900],),
    body: Center(
    child:Column(
    mainAxisAlignment:MainAxisAlignment.center,
    children:<Widget>[
      Text(
        'Adınız ve Soyadınız:',
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: const InputDecoration(
            hintText: 'Adınızı ve Soyadınızı giriniz',
          ),
          keyboardType: TextInputType.text,
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter
          ],
        ),
      ),

    Padding(
    padding:
    const EdgeInsets.symmetric(vertical: 16.0),
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    primary:Colors.red[900],
    ),
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AnaSayfa()),
    ),
    child: Text('Giriş Yapınız'),
    ),
    ),
    ],
    ),
    )));
  }
}
