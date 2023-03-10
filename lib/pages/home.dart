import 'package:flutter/material.dart';
import 'package:navegacao/pages/grid_animais.dart';
import 'package:navegacao/pages/list_animais.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const GridAnimais()),
                    ),
                  );
                },
                child: const Text('Grid de Animais')),
            const Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ListAnimais()),
                    ),
                  );
                },
                child: const Text('Lista de Animais')),
          ],
        ),
      ),
    );
  }
}
