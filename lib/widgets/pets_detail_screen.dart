import 'package:flutter/material.dart';
import 'adoption_form_screen.dart';

class DogDetailScreen extends StatelessWidget {
  final String dogName;

  const DogDetailScreen({required this.dogName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(dogName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Nombre: $dogName'),
            const Text('Raza: Labrador'),
            const Text('Edad: 2 años'),
            const Text('Tamaño: Mediano'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdoptionFormScreen()),
                );
              },
              child: const Text('Solicitar Adopción'),
            ),
          ],
        ),
      ),
    );
  }
}
