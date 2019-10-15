import 'package:flutter/material.dart';
import 'package:prov_demo_jr/src/providers/villanosinfoprovider.dart';
import 'package:provider/provider.dart';
import 'package:prov_demo_jr/src/providers/heroesinfoprovider.dart';

import 'package:prov_demo_jr/src/widgets/super_floatingaction.dart';
import 'package:prov_demo_jr/src/widgets/super_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfoProv>(context);
    final villanosInfo = Provider.of<VillanosInfoProv>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Heroe: ' +
            heroesInfo.heroe +' Edad: '+
            heroesInfo.edad.toString() +
            ' Villano: '+villanosInfo.villano+' Edad: '+villanosInfo.edad.toString()),
      ),
      body: Center(child: SuperText()),
      floatingActionButton: SuperFloatinAction(),
    );
  }
}
