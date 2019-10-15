import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:prov_demo_jr/src/providers/villanosinfoprovider.dart';
import 'package:prov_demo_jr/src/providers/heroesinfoprovider.dart';
import 'package:prov_demo_jr/src/pages/home_page.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       builder: (context)=>HeroesInfo_PROV(),
//           child: MaterialApp(
//         title: 'Material App',
//         initialRoute: 'home',
//         routes: {
//           'home':(context)=>HomePage(),
//         },

//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //builder: (context)=>HeroesInfo_PROV(),
      providers: [
        ChangeNotifierProvider(builder: (context)=>HeroesInfoProv()),
        ChangeNotifierProvider(builder: (context)=>VillanosInfoProv()),
        
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }
}

/** COLOCAR LA LIBRERIA DEL PROVIDER EN PUBSPEC.YAML
 * 
 * DEPUES DEL PAQUETE DE ICONOS
 * cupertino_icons: ^0.1.2
 * provider: ^2.0.1
 */