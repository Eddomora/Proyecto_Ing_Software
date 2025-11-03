import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final formularioKey = GlobalKey<FormState>(); //key para guardar los datos una vez finalizado el formulario
  String? selectedCategory;
  final List<String> categorias = ['Billetera', 'Celular', 'Llaves', 'Documentos', 'Joyas', 'Mochila/Bolso', 'Prenda de Vestir','Otros...'];
  final lugarController = TextEditingController(); //Para el lugar

  final dateController = TextEditingController(); //Para la fecha
  DateTime? fecha; 

  final timeController = TextEditingController(); //para la hora
  TimeOfDay? time;

  final descriptionController = TextEditingController(); //Para la descripción

  @override
  void dispose() { //función para liberar memoria cuando la página se destruye
    lugarController.dispose();
    dateController.dispose();
    timeController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  Future<void> datePicker() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), 
      firstDate: DateTime(2024), //fecha más antigua que se puede seleccionar
      lastDate: DateTime.now(), // fecha mas nueva (hoy)
      helpText: 'Seleccione fecha'
      );
      if (pickedDate != null && pickedDate != fecha) {
      //Actualizamos el estado
      setState(() {
        fecha = pickedDate;
        dateController.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  Future<void> timePicker() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context, 
      initialTime: TimeOfDay.now(),
      helpText: 'Hora aproximada'
    );
    if (pickedTime != null && pickedTime != time) {
      setState(() {
        time = pickedTime;
        timeController.text = pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Objetos')),
        body: Form(
          key: formularioKey,
          child: ListView( //Listview para que sea scrolleable
            padding: const EdgeInsets.all(15.0),
            children: [

              // ===Campo para Categoría del Objeto===
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Categoría de Objeto',
                  border: OutlineInputBorder(),
                ),
                value: selectedCategory,
                hint: Text('Selecciona una categoría'),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCategory = newValue;
                  });
                },
                items: categorias.map((String category) {
                return DropdownMenuItem<String>(
                  value: category, //el valor a guardar
                  child: Text(category),
                );
              }).toList(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, debe seleccionar una categoría';
                }
                return null;
              },
              ),
              const SizedBox(height: 20),

              //===Campo para Lugar===
              TextFormField(
                controller: lugarController,
                decoration: InputDecoration(
                  labelText: 'Lugar donde se perdió',
                  hintText: 'Ejemplo: CFM, Cubo 4, Los pastos...',
                  border: OutlineInputBorder(),
                ),
                validator: (value) { //valida
                if (value == null || value.trim().isEmpty) { //trim() para que no acepte espacios en blanco
                  return 'Por favor, ingresa el lugar';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            //===Campo para la Fecha===
            TextFormField(
              controller: dateController,
              decoration: InputDecoration(
                labelText: 'Fecha',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              readOnly: true,
              onTap: datePicker, //llamamos a la función datepicker()
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, Selecciona una fecha';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            //===Campo para la Hora===
            TextFormField(
              controller: timeController, 
              decoration: InputDecoration(
                labelText: 'Hora aproximada',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.access_time),
              ),
              readOnly: true, 
              onTap: timePicker, 
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, Selecciona una hora';
                }
                return null;
              },
            ),
            const SizedBox(height: 30),

            //===Campo para Descripción multilinea===
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Descripción detallada',
                hintText: 'Incluya máximo detalle. Ej: Color, marca, rasgos distintivos (manchas, detalles estéticos)...',
                border: OutlineInputBorder(),
                alignLabelWithHint: true, 
              ),
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Por favor, Ingresa descripción';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
