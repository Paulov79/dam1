import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(PokemonApp());
}

class PokemonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final CollectionReference pokemons = FirebaseFirestore.instance.collection('pokemons');

  Future<void> _addPokemon() async {
    if (_nameController.text.isNotEmpty) {
      await pokemons.add({'name': _nameController.text});
      _nameController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pokémon App")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Nombre del Pokémon"),
            ),
          ),
          ElevatedButton(onPressed: _addPokemon, child: Text("Agregar Pokémon")),
          Expanded(
            child: StreamBuilder(
              stream: pokemons.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
                return ListView(
                  children: snapshot.data!.docs.map((doc) {
                    return ListTile(title: Text(doc['name']));
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
