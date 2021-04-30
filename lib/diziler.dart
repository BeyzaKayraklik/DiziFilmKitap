import 'package:flutter/material.dart';


class Dizi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


          appBar: new AppBar(
            title: new Text('Dizi Tavsiyeleri'),
            backgroundColor: Colors.red[900],
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(null),
              ),
            ],
            leading: new Container(),
          ),

        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
          itemCount: data.length,

        ),
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry('Aile Dizileri ',
    <Entry>[
      Entry('Shameless',
        <Entry>[
          Entry('2011’de başlayan ve büyük ilgi gören Shameless Aile, Dram, Komedi,  Macera, Romantik, Gençlik  az da olsa Erotik türünde bazen kahkahalara boğduran bazen de üzen bir dizi türüdür. William H. Macy’ın harika bir şekilde canlandırdığı aile babası  Frank Gallagher rolü sahtekarlık, umursamazlık ve düzenbazlık için yapmayacağı şey yok hatta 1 bardak içki için bile.'),
          Entry('IMDb : 8.7'),
        ],),
      Entry('Find Me in Paris',
        <Entry>[
          Entry('İlk bölümü 14 Nisan 2018 tarihinde ZDF ve Hulu kanallarında yayınlanan Find Me in Paris; Aile, Dram, Gençlik ve Komedi türlerini barındıran Fransa ve Almanya ortak yapımı bir gençlik dizisidir.'),
          Entry('IMDb : 8.6'),
        ],),
      Entry('Modern Family',
        <Entry>[
          Entry('Modern Family, Christopher Lloyd ve Steven Levitan tarafından yaratılan, 23 Eylül 2009’dan beri ABC’de yayınlanmakta olan, komedi tarzında bir televizyon dizisi'),
          Entry('IMDb : 8.5'),
        ],),
      Entry('Ray Donovan',
        <Entry>[
          Entry('Ray Donovan, 2013 yılında başlamış ABD yapımı Suç ve Drama Dizisi. Yönetmen Koltuğunda Allen Coulter bulunmakta. Senaryo ise Ann Biderman‘a ait. Ve ayrıca bir kaç ödül sahibi de oldu Ray Donovan dizisi.'),
          Entry('IMDb : 8.3'),
        ],),
      Entry('Atypical',
        <Entry>[
          Entry('Dizide otizm hastalığını kabullenemeyen Sam adlı bir çocuğun ufkunu genişletme ve normal bir insan gibi yaşama isteği ve arzusunu ele alınıyor. Otistik rahatsızlığı olan Sam karakterini It Follows‘dan tanıdığımız Keir Gilchrist canlandırıyor. Dizide Sam karakterinin normal bir insan gibi aşık olmaya çalışmasının serüvenini ve ailesinin yaşamış olduğu dram anlatılıyor.'),
          Entry('IMDb : 8.3'),
        ],),
      Entry('The Dragon Prince',
        <Entry>[
          Entry('İlk bölümü 14 Eylül 2018’de yayınlanan ve yüzde 98 beğeni ortalamasına sahip olan The Dragon Prince, Aile, Animasyon ve Fantastik türleri içerisinde barındıran bir Amerikan dizisidir'),
          Entry('IMDb : 8.3'),
        ],),
      Entry('The Big Bang Theory',
        <Entry>[
          Entry('The Big Bang Theory veya kısaca TBBT, Chuck Lorre ve Bill Prady tarafından yaratılmış Amerikan durum komedisi. İlk kez 24 Eylül 2007‘de CBS‘de yayınlanmıştır'),
          Entry('IMDb : 8.2'),
        ],),
      Entry('One Day at a Time',
        <Entry>[
          Entry('One Day At a Time, 2017 yılından itibaren Netflix’de yayınlanmaya başlayan Komedi, Sit-com dizisidir. TCA En İyi Komedi Dizisi Ödülü ve GLAAD Medya En İyi Komedi Dizisi Ödülü gibi önemli şeylere aday olarak gösterilmiştir'),
          Entry('IMDb : 8.2 '),
        ],),
      Entry('Glitch Techs',
        <Entry>[
          Entry('İlk bölümü 21 Şubat 2020’de Nickelodeon ve Netflix’te yayınlanan Glitch Techs; Aile,Aksiyon ve Bilim Kurgu türlerinde Amerikan yapımı bir Animasyon dizisidir'),
          Entry('IMDb : 8.2'),
        ],),
      Entry('The Village',
        <Entry>[
          Entry('İlk bölümü 19 Mart 2019 tarihinde NBC kanalında yayınlanan The Village, Dram türünde bir Amerikan dizisidir'),
          Entry('IMDb : 7.8'),
        ],),
    ],
  ),
  Entry('Dram Dizileri',
    <Entry>[
      Entry('Star Trek: Picard'),
      Entry('Stove League'),
      Entry('Ted Lasso'),
      Entry('The Baker and the Beauty'),
      Entry('Almost Paradise'),
      Entry('Miss Lee'),
      Entry('Itaewon Class'),
      Entry('El Recluso'),
      Entry('Katy Keene'),
      Entry('Locke & Key'),
    ],
  ),
  Entry('Gerilim Dizileri',
    <Entry>[
      Entry('El Recluso'),
      Entry('Carnival Row'),
      Entry('Salvation'),
      Entry('The Capture'),
      Entry('Frontera Verde'),
      Entry('Kakegurui'),
      Entry('Chernobyl'),
      Entry('O Mecanismo'),
      Entry('Kingdom'),
      Entry('Fargo'),

    ],
  ),
      Entry('Komedi Dizileri',
        <Entry>[
          Entry('Ted Lasso'),
          Entry('Chichipatos'),
          Entry('The Baker and the Beauty'),
          Entry('Office Girls'),
          Entry('Modern Farmer'),
          Entry('Love with Flaws'),
          Entry('Extraordinary You'),
          Entry('Miss Lee'),
          Entry('Onzoshi Boys'),
          Entry('The Expanding Universe of Ashley Garcia'),
        ],
      ),


      Entry('Macera Dizileri',
        <Entry>[
          Entry('Star Trek: Picard'),
          Entry('Stargirl'),
          Entry('Vagrant Queen'),
          Entry('The Letter for the King'),
          Entry('The Witcher'),
          Entry('The Mandalorian'),
          Entry('Game of Thrones'),
          Entry('Farscape'),
          Entry('The Tick'),
          Entry('Whiskey Cavalier'),
        ],
      ),

];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty)
      return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}






