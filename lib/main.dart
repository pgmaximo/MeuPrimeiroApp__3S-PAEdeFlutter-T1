import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});
///////
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Meu Primeiro App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    //Variaveis
    const corRoxo = Color.fromRGBO(125, 96, 161, 1);

    //Scaffold | Widgets
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40)),
        backgroundColor : corRoxo,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 170),

                const Text(
                  'Every Purchase Will be Made With Pleasure',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 15),

                const Text('Buy and enjoy'),

                const SizedBox(height: 15),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: corRoxo,
                    minimumSize: const Size(250, 50),
                  ),
                  child: const Text(
                    'Iniciar compras',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 15),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: corRoxo),
                        minimumSize: const Size(120, 50),
                      ),
                      child: const Text(
                        'Learn more',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                      ),
                    ),

                    const SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: corRoxo),
                        minimumSize: const Size(120, 50),
                      ),
                      child: const Text(
                        'Login', 
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                      ),
                    ),
                  ], //Children
                ),
              ], //Children
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: corRoxo,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ),
        ], //Children
      )
    );
  } //Widget Build
} //Class