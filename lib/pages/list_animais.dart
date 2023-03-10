import 'package:flutter/material.dart';
import 'package:navegacao/pages/leao_details.dart';
import '../model/animal.dart';

class ListAnimais extends StatefulWidget {
  const ListAnimais({super.key});

  @override
  State<ListAnimais> createState() => _ListAnimaisState();
}

class _ListAnimaisState extends State<ListAnimais> {
  final String title = 'Lista de Animais';
  List<Animal> animaisList = [
    Animal(
      nome: 'Leão',
      habilidade: 'Matar',
      pesoMedio: 200.00,
      fotos: ['https://cdn-icons-png.flaticon.com/128/235/235361.png'],
    ),
    Animal(
      nome: 'Macaco',
      habilidade: 'Pular',
      pesoMedio: 20.00,
      fotos: [
        'https://images.vexels.com/media/users/3/156615/isolated/lists/a0f4a7664336f8c73c77bfef12c2028f-ilustracao-de-macaco-chimpanze.png'
      ],
    ),
    Animal(
      nome: 'Zebra',
      habilidade: 'Comer',
      pesoMedio: 180.00,
      fotos: [
        'https://i.pinimg.com/originals/07/77/99/0777993a5c48151dc8f188cd1acdd907.png'
      ],
    ),
    Animal(
      nome: 'Cavalo',
      habilidade: 'correr',
      pesoMedio: 180.00,
      fotos: ['https://portalgame.org/assets/images/animais/cavalo.png'],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: animaisList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.network(animaisList[index].fotos![0]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nome: ${animaisList[index].nome} '),
                              Text('Idade: ${animaisList[index].habilidade}'),
                              Text('Endereço: ${animaisList[index].pesoMedio}')
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            switch (animaisList[index].nome) {
                              case 'Leão':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const LeaoDetail()),
                                  ),
                                );
                                break;
                              default:
                            }
                          },
                          tooltip: 'Vizualizar Animal',
                          icon: const Icon(Icons.remove_red_eye),
                          color: Colors.green,
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
