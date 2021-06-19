import 'package:flutter/material.dart';


class Kitap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: new AppBar(
          title: new Text('Kitap Tavsiyeleri'),
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

  Entry('Franz Kafka - Dönüşüm'),
  Entry('John Steinbeck - Fareler ve İnsanlar'),
  Entry('Stefan Zweig - Satranç'),
  Entry('Jose Saramago - Bilinmeyen Adanın Öyküsü'),
  Entry('Antoine de Saint-Exupery - Küçük Prens'),
  Entry('Sabahattin Ali - Kürk Mantolu Madonna'),
  Entry('Hank Moody - Tanrı Hepimizden Nefret Ediyor'),
  Entry('İhsan Oktay Anar - Puslu Kıtalar Atlası'),
  Entry('Hermann Hesse - Siddhartha'),
  Entry('Dostoyevski - Yeraltından Notlar'),
  Entry('Natalie Babbitt - Ölümsüz Aile'),
  Entry('Goethe - Genç Wertherin Acıları'),
  Entry('Uğur Koşar - Yüzleşme'),
  Entry('George Orwell - Hayvan Çiftliği'),
  Entry('Albert Camus - Yabancı'),

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


