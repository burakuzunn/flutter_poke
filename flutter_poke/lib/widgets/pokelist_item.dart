import 'package:flutter/material.dart';
import 'package:flutter_poke/model/ui_helper.dart';
import 'package:flutter_poke/pages/detail_page.dart';
import 'package:flutter_poke/widgets/poke_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/constants.dart';
import '../model/pokemon_model.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(pokemon: pokemon),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: Constantes.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name.toString(),
                style: Constantes.getPokemonNameTextStyle(),
              ),
              Chip(
                label: Text(
                  pokemon.type![0].toString(),
                ),
              ),
              Expanded(child: PokeImage(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
