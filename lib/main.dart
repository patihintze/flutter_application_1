import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aprendendo a manipular os widgets",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "MyApp",
          ),
        actions: [
          Builder(
            builder: (BuildContext context){
              return IconButton(
            onPressed: (){
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(Icons.settings),
              );
            }
          ),
          const Icon(Icons.home_sharp),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            Text("Início"),
            Text("Produtos"),
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Column(
          children: [
            Text("Configurações"),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(children: [
            Container(
              width: 150,
              height: 300,
              color: Colors.grey
            ),
                        Container(
              width: 150,
              height: 300,
              color: Colors.lightBlue
            ),
            Container(
              width: 150,
              height: 300,
              color: Colors.lightGreen
            ),
            Container(
              width: 150,
              height: 300,
              color: Colors.indigo
            )
            ],
          ),
          ],
        ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MySecondPage(),
              ));
            },
            child: const Text("Próxima tela")),
      ),
    );
  }
}

  
