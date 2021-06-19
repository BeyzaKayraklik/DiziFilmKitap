import 'package:flutter/material.dart';



class afis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Haftanın Filmi'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('A Christmas Carol - Noel Şarkısı ', style: TextStyle(fontSize: 18.0),),
            Padding(padding: EdgeInsets.only(bottom: 18.0),),
            Image.asset('assets/afis2.jpg'),
            Padding(padding: EdgeInsets.only(bottom: 18.0),),
            Text('Hikâye cimri ve huysuz bir yaşlı adamın (Ebenezer Scrooge) bir gecede nasıl değişiverdiğini anlatır.', style: TextStyle(fontSize: 18.0),)
          ],
        ),
      ),
    );
  }
}