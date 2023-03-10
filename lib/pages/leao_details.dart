import 'package:flutter/material.dart';
import 'package:navegacao/model/animal.dart';

class LeaoDetail extends StatefulWidget {
  const LeaoDetail({super.key});

  @override
  State<LeaoDetail> createState() => _LeaoDetailState();
}

class _LeaoDetailState extends State<LeaoDetail> {
  String title = 'Leão';
  Animal leao = Animal(
    nome: 'Leão',
    pesoMedio: 200.00,
    habilidade: 'Rei da Selva',
    fotos: [
      'https://cdn-icons-png.flaticon.com/128/235/235361.png',
      'https://cdn-icons-png.flaticon.com/256/7286/7286635.png'
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 10,
              child: Column(
                children: [
                  Text(leao.nome!),
                  Image(
                    image: NetworkImage(leao.fotos![0]),
                  ),
                  Text(leao.habilidade!),
                  Text(leao.pesoMedio!.toString()),
                ],
              ),
            ),
            const Text('Fotos'),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: leao.fotos!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        elevation: 10,
                        child: Image(
                          image: NetworkImage(leao.fotos![index]),
                        ));
                  }),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
