import 'package:flutter/material.dart';
import 'contato.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListaPage(),
    );
  }
}
 

class ListaPage extends StatefulWidget {
  const ListaPage({Key? key}) : super(key: key);

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<IconData> icones = List.filled(contatos.length, Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Builder')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(contatos[index].nome.substring(0, 1)),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: IconButton(
              icon: Icon(icones[index]), // Usa o ícone correspondente ao estado armazenado na lista
              onPressed: () {
                setState(() {
                  // Alterna entre os ícones favorito com e sem preenchimento para a linha selecionada
                  icones[index] = (icones[index] == Icons.favorite) ? Icons.favorite_border : Icons.favorite;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
