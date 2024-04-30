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
  int cont = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('contador de favoritos: $cont'),),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=?'),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: IconButton(
              icon: Icon(contatos[index].icone), // Usa o ícone correspondente ao estado armazenado na lista
              onPressed: () {
                setState(() {
                  // Alterna entre os ícones favorito com e sem preenchimento para a linha selecionada
                    if (contatos[index].icone == Icons.favorite) {
                        contatos[index].icone = Icons.favorite_border;
                        cont-- ;
                    } else {
                              contatos[index].icone = Icons.favorite;
                              cont++;
}                });
              },
            ),
          );
        },
      ),
    );
  }
}
