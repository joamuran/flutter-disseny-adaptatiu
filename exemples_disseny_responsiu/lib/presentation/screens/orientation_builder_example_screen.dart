import 'package:exemples_disseny_responsiu/presentation/helpers/layout_helpers.dart';
import 'package:flutter/material.dart';

class OrientationBuilderExampleScreen extends StatelessWidget {
  const OrientationBuilderExampleScreen({super.key});

  // Exemple amb OrientationBuilder
  // Funcionament: Fem ús del widget OrientationBuilder, el qual, rep al
  //               mètode build, a més del context, l'orientació (orientation)

  @override
  Widget build(BuildContext context) {
    // Aquesta pantalla conté un scaffold amb la barra d'aplicacions i un cos
    return Scaffold(
      appBar: AppBar(title: const Text('OrientationBuilder Example')),
      // El body és un SafeArea: Widget que evita la interfície del sistema
      body: SafeArea(
        // Reacciona explícitament a canvis d’orientació del pare
        // Rebem orientation en el builder
        child: OrientationBuilder(
          builder: (context, orientation) {
            // isLandscape rep el valor de la comparació orientation==Orientation.landscape
            final isLandscape = orientation == Orientation.landscape;
            // Segons aquest, retornem un o altre arbre de widgets (ui declarativa)
            return isLandscape
                ? sideBySideLayout(context)
                : stackedLayout(context);
          },
        ),
      ),
    );
  }
}
