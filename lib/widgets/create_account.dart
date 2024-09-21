import 'package:flutter/material.dart';


class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F7FA), // Color de fondo suave
      appBar: AppBar(
        title: Text('Crear Cuenta'),
        backgroundColor: Color(0xFF00796B), // Color de la barra de aplicación
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de la asociación
              Image.asset(
                'assets/logo.png', // Asegúrate de tener el logo en la carpeta assets
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Completa la información para crear tu cuenta',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF00796B)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para crear la cuenta
                  Navigator.pop(context); // Regresar a inicio de sesión
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00796B), // Color del botón
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
                child: Text('Crear Cuenta'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Regresar a inicio de sesión
                },
                child: Text('Ya tengo una cuenta', style: TextStyle(color: Color(0xFF00796B))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
