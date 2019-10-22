import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ItapsStecki(),
    );
  }
}

class ItapsStecki extends StatefulWidget {
  @override
  _ItapsSteckiState createState() => _ItapsSteckiState();
}

class _ItapsSteckiState extends State<ItapsStecki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Itap und Bowas gehen durch den Wald!"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network("https://img.gfx.no/426/426687/aquadelic_gt_3x2.jpg"),
            machMirNeReiheMan("Name:", "Paddy BOI"),
            machMirNeReiheMan("Alter:", "Tja ..."),
            machMirNeReiheMan("Hobbies:", "Suchten"),
            machMirNeReiheMan("Best Friend:", "BORIS"),
          ],
        ),
      ),
    );
  }

  Widget machMirNeReiheMan(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            attribut,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            wert,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
