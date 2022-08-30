import 'package:flutter/material.dart';

void main () => runApp(MeuApp());
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Exploration!',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MinhaHomePage(),
    );
  }
}

class MinhaHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Planejador de Viajem Espacial"),
      ),
      body: Column(
        children: [
          Progresso(),
          ListaDeTarefas()
        ],
      ),
    );
  }
}
class Progresso extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text("Você Já percorreu tudo isso do Universo"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}
class ListaDeTarefas extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ItemDaLista(label: "Colocar recursos no foguete"),
        ItemDaLista(label: "Lançar o Foguete"),
        ItemDaLista(label: "Dar uma volta na Terra"),
        ItemDaLista(label: "Ir em direção a Lua"),
        ItemDaLista(label: "Chegar na Lua !"),
      ],
    );
  }
}

class ItemDaLista extends StatefulWidget{
  final String label;

  const ItemDaLista({Key? key, required this.label}) : super(key: key);

  @override
  State<ItemDaLista> createState() => _ItemDaListaState();
}

class _ItemDaListaState extends State<ItemDaLista> {
  bool? _valor = false;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
            onChanged: (novoValor) => setState(() => _valor = novoValor),
            value: _valor,
        ),
        Text(widget.label),
      ],
    );
  }
}