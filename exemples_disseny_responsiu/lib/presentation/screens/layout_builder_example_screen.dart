import 'package:exemples_disseny_responsiu/presentation/helpers/layout_helpers.dart';
import 'package:flutter/material.dart';

class LayoutBuilderExampleScreen extends StatelessWidget {
  const LayoutBuilderExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Seguim una visió "constraints-first"
    // Enfoque "constraints-first" (Understanding Constraints)
    // decidim layout per amplada disponible (no per mida global de pantalla).
    const double breakpoint = 600; // exemple de llindar “compact/expanded”
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= breakpoint;
            // Nota: açò s’adapta també a split‑view, web, panells laterals, etc.
            return isWide ? sideBySideLayout(context) : stackedLayout(context);
          },
        ),
      ),
    );
  }
}
