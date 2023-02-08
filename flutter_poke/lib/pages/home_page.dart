import 'package:flutter/material.dart';
import 'package:flutter_poke/widgets/app_title.dart';

import 'package:flutter_poke/widgets/pokemon_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          const Expanded(
            child: PokemonList(),
          ),
        ],
      ),
    );
  }
}
