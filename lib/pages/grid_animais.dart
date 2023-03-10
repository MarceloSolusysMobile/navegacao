import 'package:flutter/material.dart';
import 'package:navegacao/model/animal.dart';

class GridAnimais extends StatefulWidget {
  const GridAnimais({super.key});

  @override
  State<GridAnimais> createState() => _GridAnimaisState();
}

class _GridAnimaisState extends State<GridAnimais> {
  final String title = 'Grid de Animais';
  List<Animal> animaisList = [
    Animal(
        nome: 'Leão',
        imgUrl: 'https://cdn-icons-png.flaticon.com/128/235/235361.png'),
    Animal(
        nome: 'Macaco',
        imgUrl:
            'https://images.vexels.com/media/users/3/156615/isolated/lists/a0f4a7664336f8c73c77bfef12c2028f-ilustracao-de-macaco-chimpanze.png'),
    Animal(
        nome: 'Zebra',
        imgUrl:
            'https://i.pinimg.com/originals/07/77/99/0777993a5c48151dc8f188cd1acdd907.png'),
    Animal(
        nome: 'Cavalo',
        imgUrl: 'https://portalgame.org/assets/images/animais/cavalo.png')
  ];

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
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: animaisList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        child: Image(
                      image: NetworkImage(animaisList[index].imgUrl!),
                    ));
                  }),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
