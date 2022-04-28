import 'package:flutter/material.dart';

class completo extends StatelessWidget {
  int index;
  List datos = [];
  completo(this.index, this.datos, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("informacion"),
      ),
      body: Center(
        child: ListTile(
          title: Row(children: const [Text("ESTUDIANTE")]),
          subtitle: Column(
            children: [
              Row(children: [
                const Text("Nombre: "),
                Text(
                  datos[index]["nombreCompleto"],
                ),
              ]),
              Row(children: [
                const Text("Carrera: "),
                Text(datos[index]["carrera"]),
              ]),
              Row(children: [
                const Text("Matricula: "),
                Text(datos[index]["matricula"]),
              ]),
              Row(children: [
                const Text("Semestre: "),
                Text(datos[index]["semestre"]),
              ]),
              Row(children: [
                const Text("Telefono: "),
                Text(datos[index]["telefono"]),
              ]),
              Row(children: [
                const Text("Correo: "),
                Text(datos[index]["correo"]),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
