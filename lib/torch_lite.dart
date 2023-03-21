import 'package:flutter/cupertino.dart';                  // Importa la biblioteca de Cupertino de flutter
import 'package:flutter/material.dart';                   // Importa la biblioteca de materiales de flutter
import 'package:torch_controller/torch_controller.dart';  // Importa la clase TorchController del archivo torch_controller.dart

class TorchLite extends StatefulWidget {                // Clase TorchLite que hereda de StatefulWidget
  const TorchLite({super.key});                         // Clase de widget llamada TorchLite con un constructor
                                                          // constante que acepta una clave (key) como argumento.

  @override
  State<TorchLite> createState() => _TorchLiteState();  // Método createState() que devuelve una nueva instancia de la clase _TorchLiteState
}

class _TorchLiteState extends State<TorchLite>{         // Clase de estado privado para TorchLite
  var isActive = false;                                 // Define una variable booleana isActive como falsa
  var control = TorchController();                      // Crea una instancia del controlador

  @override
  Widget build(BuildContext context){                   // Método que devuelve un widget que construye la aplicación
    return Scaffold(                                    // Devuelve un objeto Scaffold
      backgroundColor: Color(0xFF081F3A),               // Establece el color de fondo de la aplicación como un tono de azul oscuro
      appBar: AppBar(                                   // Define la barra de aplicación
        backgroundColor: Color(0xFF061426),             // Establece el color de fondo de la barra superior como un tono de azul más oscuro
        elevation: 0.0,                                 // Establece la elevación de la barra en 0
        centerTitle: true,                              // Centra el título de la aplicación
        title: Text("L I N T E R N A",                  // Establece el título de la aplicación
          style: TextStyle(
            color: Color(0xFFFFFFFF),                   // Establece el color del título de la aplicación como blanco
          ),
        ),
      ),

      //COMANDOS Ctrl + R (seleccionado para renombrar)
      //COMANDOS Alt + Insert para generar codigo
      //COMANDOS Alt + enter para wraps
      body: Column(                                     // Crea una columna de widgets para la interfaz de usuario
        children: [
          Expanded(child: Padding(                      // Crea un widget expandido con un relleno en todos los lados
            padding: const EdgeInsets.all(8.0),
            child: Center(                              // Centra el cuerpo horizontalmente
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,  // Centra los elementos verticalmente
                children: [
                  CircleAvatar(                               // Crea un círculo con el icono de la antorcha
                    minRadius: 50,
                    maxRadius: 90,
                    backgroundColor: Color(0xFF081F3A),       // Establece el color de fondo del icono como el mismo que el de la aplicación
                    child: Transform.scale(                   // Escala el icono
                      scale: 6,
                      child: IconButton(
                          onPressed: (){
                            control.toggle();                 // Activa o desactiva la antorcha al hacer clic en el icono
                            isActive = !isActive;             // Cambia el estado de isActive
                            setState(() {});                  // Notifica al widget que debe reconstruirse con el nuevo estado
                          },
                          icon: Image.asset(isActive ? 'images/ON.png' : 'images/OFF.png')
                      ),  // Carga la imagen del icono de encendido o apagado según el estado de isActive
                    ),
                  ),
                ],
              ),
            ),
          )),

          Text("D   E   S   A   R   R   O   L   L   A   D   A        P O R        M   R   T   X   _   s   1   4",
            style: TextStyle(color: Colors.white24,
                fontSize: 8), //Formato del texto.
          ),

          Padding(
              padding: EdgeInsets.all(3)   //Es un relleno entre la imagen y la caja de texto.
          ),
        ],
      ),
    );
  }
}

