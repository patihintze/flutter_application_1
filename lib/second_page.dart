import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Minha segunda tela",
      home: MySecondPage(),
    );
  }
}

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key});

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "MyApp",
        ),
        actions: const [
          Icon(Icons.settings),
          Icon(Icons.home_sharp),
        ],
      ),
      body: const Center(
        child: Text("Parabéns!! Você chegou à segunda tela!"),
      ),
    );
  }
}
