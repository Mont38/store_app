import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pokeApi = "https://pokeapi.co/api/v2/pokemon?limit=100&offset=0";
  void initState() {
    super.initState();
    if (mounted) {
      fetchPokemonData();
    }
  }

  List<dynamic> pokedex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        pokedex.length != null
            ? Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                  ),
                  itemCount: pokedex.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Text(pokedex[index]['name']),
                    );
                  },
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              )
      ],
    ));
  }

  void fetchPokemonData() {
    http.get(Uri.parse(pokeApi)).then((response) {
      if (response.statusCode == 200) {
        var decodedJsonData = jsonDecode(response.body);
        setState(() {
          pokedex = decodedJsonData['results'];
          print(pokedex[0]['name']);
        });
      } else {
        print(
            'Failed to fetch Pokémon data. Error code: ${response.statusCode}');
      }
    }).catchError((error) {
      print('Error occurred while fetching Pokémon data: $error');
    });
  }
}
