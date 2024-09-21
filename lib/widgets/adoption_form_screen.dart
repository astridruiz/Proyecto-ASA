import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; // Agregar esta importación

class AdoptionFormScreen extends StatefulWidget {
  const AdoptionFormScreen({Key? key}) : super(key: key);

  @override
  _AdoptionFormScreenState createState() => _AdoptionFormScreenState();
}

class _AdoptionFormScreenState extends State<AdoptionFormScreen> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController idCardController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController studentController = TextEditingController();
  final TextEditingController homePhoneController = TextEditingController();
  final TextEditingController workPhoneController = TextEditingController();
  final TextEditingController cellPhoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController animalNameController = TextEditingController();
  final TextEditingController animalSexController = TextEditingController();
  final TextEditingController animalSpeciesController = TextEditingController();
  final TextEditingController adoptionReasonController = TextEditingController();
  final TextEditingController familyAgreementController = TextEditingController();
  final TextEditingController otherPetsController = TextEditingController();
  final TextEditingController petOriginController = TextEditingController();
  final TextEditingController housingConditionController = TextEditingController();
  final TextEditingController familyExpensesController = TextEditingController();
  XFile? _signatureImage;

  Future<void> _pickSignatureImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _signatureImage = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario de Solicitud de Adopción')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: numberController,
                decoration: InputDecoration(labelText: 'No.'),
              ),
              TextField(
                controller: placeController,
                decoration: InputDecoration(labelText: 'Lugar'),
              ),
              TextField(
                controller: dateController,
                decoration: InputDecoration(labelText: 'Fecha (DD/MM/YYYY)'),
              ),
              SizedBox(height: 20),
              Text('Datos del Interesado en la Adopción', style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Edad'),
              ),
              TextField(
                controller: idCardController,
                decoration: InputDecoration(labelText: 'Tarjeta de Identidad'),
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Domicilio exacto'),
              ),
              TextField(
                controller: professionController,
                decoration: InputDecoration(labelText: 'Profesión u Oficio'),
              ),
              TextField(
                controller: studentController,
                decoration: InputDecoration(labelText: 'Estudiante de'),
              ),
              TextField(
                controller: homePhoneController,
                decoration: InputDecoration(labelText: 'Teléfono de Residencia'),
              ),
              TextField(
                controller: workPhoneController,
                decoration: InputDecoration(labelText: 'Tel. Trabajo'),
              ),
              TextField(
                controller: cellPhoneController,
                decoration: InputDecoration(labelText: 'Celular'),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Correo electrónico'),
              ),
              SizedBox(height: 20),
              Text('Información del Animal de Compañía', style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                controller: animalNameController,
                decoration: InputDecoration(labelText: 'Nombre o identificación'),
              ),
              TextField(
                controller: animalSexController,
                decoration: InputDecoration(labelText: 'Sexo'),
              ),
              TextField(
                controller: animalSpeciesController,
                decoration: InputDecoration(labelText: 'Especie'),
              ),
              TextField(
                controller: adoptionReasonController,
                decoration: InputDecoration(labelText: 'Razón para adoptar'),
              ),
              TextField(
                controller: familyAgreementController,
                decoration: InputDecoration(labelText: '¿Está de acuerdo la familia? (Sí/No)'),
              ),
              TextField(
                controller: otherPetsController,
                decoration: InputDecoration(labelText: '¿Tiene otras mascotas? (Especie y Cantidad)'),
              ),
              TextField(
                controller: petOriginController,
                decoration: InputDecoration(labelText: 'Procedencia de sus mascotas (Adoptada/Rescatada/Comprada)'),
              ),
              TextField(
                controller: housingConditionController,
                decoration: InputDecoration(labelText: '¿Viven dentro de la vivienda?'),
              ),
              TextField(
                controller: familyExpensesController,
                decoration: InputDecoration(labelText: '¿Está preparada la familia para gastos extras?'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickSignatureImage,
                child: Text('Subir Imagen de la Firma'),
              ),
              if (_signatureImage != null) ...[
                SizedBox(height: 10),
                Image.file(File(_signatureImage!.path), height: 100),
              ],
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes manejar el envío del formulario
                },
                child: Text('Enviar Solicitud'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
