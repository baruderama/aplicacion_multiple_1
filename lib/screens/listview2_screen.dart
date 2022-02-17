import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['chapulin', 'lolo', 'lala'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.indigo,
          ),
          onTap: () {
            final nombres = options[index];
            debugPrint(nombres);
          },
        ),

        ///como no se esta utilizando esos dos propiedades se pone _ y __
        separatorBuilder: (_, __) => const Divider(
          thickness: 2,
        ),
      ),
    );
  }
}
