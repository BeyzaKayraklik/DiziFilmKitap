import 'package:flutter/material.dart';
import 'package:my_library/Anasayfa.dart';


class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}
class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Hakkında'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          const Text.rich(
          TextSpan(
            // default text style
            children: <TextSpan>[
              TextSpan(text: 'Bu uygulama Dr.Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193311037 numaralı Fatma Beyza KAYRAKLIK tarafından 30 Nisan 2021 tarihinde yapılmıştır. ', style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(text: 'Bu uygulamadaki diziler www.dizioneri.com  dan alınmıştır.', style: TextStyle(fontStyle: FontStyle.italic)),

            ],
          ),
          ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:Colors.red[900],
                  ),
                  onPressed: () =>Navigator.push(context
                      , MaterialPageRoute(builder: (context) => AnaSayfa()),
                  ),

                  child : Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}