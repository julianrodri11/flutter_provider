import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:prov_demo_jr/src/providers/villanosinfoprovider.dart';
import 'package:prov_demo_jr/src/providers/heroesinfoprovider.dart';

class SuperFloatinAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfoProv>(context);
    final villanosInfo = Provider.of<VillanosInfoProv>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.accessibility),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'Super Heroe A';
            heroesInfo.edad = 25;
            villanosInfo.villano = 'Villano A';
            villanosInfo.edad = 33;
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = 'Super Heroe B';
            heroesInfo.edad = 50;
            villanosInfo.villano = 'Villano B';
            villanosInfo.edad = 66;
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.airline_seat_flat_angled),
          backgroundColor: Colors.blueGrey,
          onPressed: () {
            heroesInfo.edad=79;
            villanosInfo.edad = 13;
          },
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
