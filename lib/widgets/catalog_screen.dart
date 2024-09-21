import 'package:flutter/material.dart';
import 'pets_detail_screen.dart';

class CatalogScreen extends StatelessWidget {
  final List<String> dogs = ['Perro 1', 'Perro 2', 'Perro 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catálogo de Perros')),
      body: ListView.builder(
        itemCount: dogs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dogs[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DogDetailScreen(dogName: dogs[index])),
              );
            },
          );
        },
      ),
    );
  }
}
