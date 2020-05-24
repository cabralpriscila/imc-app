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
  TextEditingController nome = TextEditingController();
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();
  String mensagem = "";

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
                controller: nome,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Nome",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: peso,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Peso",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: altura,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    labelText: "Altura",
                    border: OutlineInputBorder()),
              ),
            ),
            RaisedButton(
              onPressed: () {
                final imc = double.parse(peso.text) /
                    (double.parse(altura.text) * double.parse(altura.text));
                setState(() {
                  mensagem = "${nome.text}, seu IMC é $imc";
                });
              },
              textColor: Colors.white,
              color: Colors.teal,
              child: Text("Calcular"),
            ),
            Text(mensagem)
          ],
        ),
      ),
    );
  }
}
