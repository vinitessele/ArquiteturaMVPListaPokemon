import 'package:flutter/material.dart';
import '../provider/pokemons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pokedex lista",
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int idx) {
          return Divider();
        },
        itemCount: listOfPokemons.length,
        itemBuilder: (context, idx) {
          final resultado = listOfPokemons[idx];
          return ListTile(
             leading: Image.asset(resultado.photo),
              key: Key('$idx ${resultado.hashCode}'),
              title: Text(resultado.name),
              subtitle: Text(resultado.description),
          );
        }
      ),
    );
  }
}
