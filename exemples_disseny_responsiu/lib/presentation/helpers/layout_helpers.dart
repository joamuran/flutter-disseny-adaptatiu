import 'package:exemples_disseny_responsiu/presentation/widgets/my_container_widget.dart';
import 'package:exemples_disseny_responsiu/presentation/widgets/my_list_widget.dart';
import 'package:flutter/material.dart';

/* ============================
   Helpers de composició layout
   ============================ 
   
   Aquestes funcions (també conegudes com "helpers" o ajudants), s'usen per 
   "ajudar-nos" a fer la composició del layout i utilitzen els widgets reutilitzables
   que hem creat a la carpeta corresponents.

   En aquest cas, es tracta de funcions públiques que utilitzarem en les tres
   pantalles d'exemple (MedisQuertExampleScreen, OrientationBuilderExampleScreen, 
   i LayoutBuilderExampleScreen).

   Generalment, en les vostres aplicacions, aquestes funcions podran ser privades
   i anar dins el mateix fitxer on definiu la pantalla, ja que només serviran
   per "ajudar" en la construcció d'aquesta.

   En aquest exemple les hem extretes per no deixar el mateix codi per triplicat
   en cada pantalla.
   
   */

/// Disposició *top–bottom* (portrait): contenidor dalt, llista baix.
Widget stackedLayout(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      children: const [
        // El contenidor ocupa alçada intrínseca; la llista s’expandeix
        MyContainerWidget(),
        SizedBox(height: 12),
        Expanded(child: MyListWidget()),
      ],
    ),
  );
}

/// Disposició *side‑by‑side* (landscape): contenidor esquerra, llista dreta.
Widget sideBySideLayout(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Row(
      children: const [
        Flexible(flex: 2, child: MyContainerWidget()),
        SizedBox(width: 12),
        Flexible(flex: 3, child: MyListWidget()),
      ],
    ),
  );
}
