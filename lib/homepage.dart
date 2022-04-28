import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:proyecto14/completo.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late List datos = [];
  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/personas.json');
    setState(() => datos = json.decode(jsonText));
    return 'ssdi';
  }

  @override
//carga los datos del estudiante
  void initState() {
    super.initState();
    //carga el metodo
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Base de datos"),
      ),
      body: ListView.builder(
          itemCount: datos.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            completo(index, datos)));
              },
              title: Text(datos[index]["nombreCompleto"]),
              leading: CircleAvatar(
                child: Text(datos[index]["nombreCompleto"].substring(0, 1)),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }
}
