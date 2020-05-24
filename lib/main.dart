import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IMC Application",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal, title: Text("IMC"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(
                  "https://pt.calcuworld.com/wp-content/uploads/sites/6/2019/07/imc-.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Nome",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Peso",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Altura",
                    border: OutlineInputBorder()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
