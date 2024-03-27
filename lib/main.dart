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
      body: Center(
        child: Column (
          children: [
            const Text(
              'Every Purchase Will be Made With Pleasure',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, )
            ),
            const Text(
              'Buy and enjoy'
            ),
            ElevatedButton(
              onPressed: () {
                print(
                  'Start shopping'
                );
              },
              child: const Text('Iniciar compras'),
            ),
            ElevatedButton (
              onPressed: () {
                print('Botão cliado');
              }
              child: const Text('botao 2')
            )
            ElevatedButton (
              onPressed: () {
                print('Botão cliado');
              }
              child: const Text('botao 3'),
            )
          ]
        )
      )
    );
  }
}
