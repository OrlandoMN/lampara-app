import 'package:flutter/material.dart';                   // Importa la biblioteca de materiales de flutter
import 'package:lampara/torch_lite.dart';                 // Importa la clase TorchLite del archivo torch_lite.dart
import 'package:torch_controller/torch_controller.dart';  // Importa la clase TorchController del archivo torch_controller.dart

void main(){
  TorchController().initialize();       // Inicializa el controlador
  runApp(const MyApp());                // Inicia la aplicación Flutter a través de MyApp
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});             // Constructor de la clase MyApp

  @override
  Widget build(BuildContext context){     // Método que devuelve un widget que construye la aplicación
    return MaterialApp(                   // Devuelve un objeto MaterialApp
      debugShowCheckedModeBanner: false,  // Oculta el banner de depuración en la parte superior derecha de la pantalla
      title: 'Linterna',                  // Define el título de la aplicación
      theme: ThemeData(                   // Define el tema de la aplicación
        primarySwatch: Colors.blue,       // Establece el color primario de la aplicación como azul
      ),
      home: const TorchLite(),            // Define la página de inicio de la aplicación como TorchLite
    );
  }
}
