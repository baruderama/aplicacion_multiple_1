import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['chapulin', 'lolo', 'lala'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ///estos ... puntos es el operador spread que dispersa o saca todos los
          ///elementos de una lista
          ...options
              .map(
                (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.ac_unit_sharp),
                ),
              )
              .toList(),
          Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
