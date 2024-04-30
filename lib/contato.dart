import 'package:flutter/material.dart';

class Contato{
  String nome;
  String email;
  bool favorito = false;
  IconData icone = Icons.favorite_border; 
  Contato(this.nome, this.email);
}

List<Contato> contatos = [
  Contato('Guilherme', 'teste@gmail.com'),
  Contato('Gustavo', 'teste2@gmail.com'),
  Contato('Gustavo', 'teste2@gmail.com'),
  Contato('Renato', 'teste3@gmail.com'),
  Contato('Matheus', 'teste5@gmail.com'),
  Contato('Paula', 'teste6@gmail.com'),
  Contato('Luiza', 'teste7@gmail.com'),
];

