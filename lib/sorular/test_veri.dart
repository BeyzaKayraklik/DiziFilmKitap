



import 'mylibrary.dart';

class TestVeri {
  int soruIndex=0;
  List<Soru> _soruBankasi = [

    Soru(soruMetni: 'Emily Jane Bronte - Uğultulu Tepeler ',
        soruYaniti: true),
    Soru(soruMetni: 'Dostoyevski - Suç Ve Ceza',
        soruYaniti: true),
    Soru(soruMetni: 'Beyhan Budak - Sen Değişirsen Her Şey Değişir ',
        soruYaniti: false),
    Soru(soruMetni: 'Jane Austen - Vadideki Zambak ',
        soruYaniti: false),
    Soru(soruMetni: 'Sabahattin Ali - Kürk Mantolu Madonna ',
        soruYaniti: true),
    Soru(soruMetni: 'Vasconcelos - Fareler Ve İnsanlar ',
        soruYaniti: false),
    Soru(soruMetni: 'J.W.Goethe - Genç Wertherin Acıları ',
        soruYaniti: true),
    Soru(soruMetni: 'Ahmet Altan - Kılıç Yarası Gibi',
        soruYaniti: true),
    Soru(soruMetni: 'Dan Brown - İki Şehrin Hikayesi  ',
        soruYaniti: false),
    Soru(soruMetni: 'Irvın D. Yalom - Nietzsche Ağladığında ',
        soruYaniti: true),
    Soru(soruMetni: 'Testi Bitirdiniz. Lütfen herhangi bir tuşa basınız. ',
        soruYaniti: true),
  ];

  String getSorumetni(){
    return _soruBankasi[soruIndex].soruMetni;

  }

  bool getSoruyaniti(){
    return _soruBankasi[soruIndex].soruYaniti;
  }

  void sonrakisoru(){
    if(soruIndex+1 <= _soruBankasi.length) {
      soruIndex++;
    }
  }
  bool testbittimi(){
    if(soruIndex+1 >= _soruBankasi.length){
      return true;
    }
    else{
      return false;
    }
  }
  void testisifirla(){
    soruIndex=0;
  }

}
