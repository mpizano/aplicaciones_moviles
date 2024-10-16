import 'package:flutter/material.dart';

void main() {
  // punto de entrada de la aplicación.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // widget sin estado (StatelessWidget).
  const MyApp({super.key});

  // Este widget punto de inicio de la aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp widget que envuelve toda la aplicación, proporcionando temas, rutas, y más.
      title: 'Welcome to Flutter', // Título de la aplicación.
      theme: ThemeData(
        // Definición del tema de la aplicación.
        colorScheme: ColorScheme.fromSeed(
            seedColor:
                const Color.fromARGB(255, 76, 96, 175)), // Esquema de colores
        useMaterial3: true, // Activa Material Design 3
      ),
      home:
          const MyHomePage(title: 'Welcome to Flutter'), // El widget principal
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage widget con estado (StatefulWidget) que contiene  título y gestiona el estado de la pagina de inicio
  const MyHomePage({super.key, required this.title});

  final String title; // Atributo del título de la página

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); // Crea el estado asociado con el widget
}

class _MyHomePageState extends State<MyHomePage> {
  // Estado asociado con MyHomePage.
  @override
  Widget build(BuildContext context) {
    // build() define la interfaz de usuario
    return Scaffold(
      // Scaffold widget base que proporciona la estructura visual
      appBar: AppBar(
        // AppBar es la barra superior
        backgroundColor: Theme.of(context)
            .colorScheme
            .inversePrimary, // Establece el color de fondo de la AppBar.
        title: Text(widget.title), // Establece el texto del título de la AppBar
      ),
      body: const Center(
        // El cuerpo de la pantalla está centrado.
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 24), // Estilo del texto,
        ),
      ),
    );
  }
}
