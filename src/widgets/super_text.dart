import 'package:flutter/material.dart';
import 'package:prov_demo_jr/src/providers/villanosinfoprovider.dart';
import 'package:provider/provider.dart';

import 'package:prov_demo_jr/src/providers/heroesinfoprovider.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfoProv>(context);
    final villanosInfo = Provider.of<VillanosInfoProv>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Heroe: ' + heroesInfo.heroe + ' Edad: ' + heroesInfo.edad.toString(),
          style: TextStyle(color: heroesInfo.colorBase, fontSize: 30.0),
        ),
        Text(
          'Villano: ' + villanosInfo.villano + ' Edad: ' + villanosInfo.edad.toString(),
          style: TextStyle(color: villanosInfo.colorBase, fontSize: 30.0),
        ),
        
      ],
    );
  }
}
