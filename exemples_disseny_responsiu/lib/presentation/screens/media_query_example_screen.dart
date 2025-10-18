import 'package:exemples_disseny_responsiu/presentation/helpers/layout_helpers.dart';
import 'package:flutter/material.dart';

class MediaQueryExampleScreen extends StatelessWidget {
  const MediaQueryExampleScreen({super.key});

  // Exemple amb MediaQuery
  // Funcionament: Preguntem quina és l'orientació del dispositiu, i
  //               segons aquesta triarem entre un i altre disseny.

  @override
  Widget build(BuildContext context) {
    // Obtenim l'orientació
    final orientation = MediaQuery.of(context).orientation;
    // L'orientació es representa amb l'enumerat Orientation, que pot
    // ser Orientation.landscape o Orientation.portrait.
    final isLandscape = orientation == Orientation.landscape;

    // Aquesta pantalla conté un scaffold amb la barra d'aplicacions i un cos
    return Scaffold(
      appBar: AppBar(title: const Text('MediaQuery Example')),
      // El body és un SafeArea: Widget que evita la interfície del sistema
      body: SafeArea(
        // retorna el resultat d'un o altre helper en funció de la variable isLandscape

        // *  Sintaxi: condicio ? expressions_si_condicio_true : expressions_si_condicio_false

        // Observeu com estem definint la interfície de forma declarativa, en
        // funció de l'estat. Si isLandscape és cert, descrivim un arbre de widgets,
        // si no, un altre. Els widgets són immutables, i es reconstrueixen a
        // cada build, deixant que Flutter siga qui detecte els canvis mínims i els aplique.
        child: isLandscape ? sideBySideLayout(context) : stackedLayout(context),
      ),
    );
  }
}
