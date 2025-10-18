import 'package:flutter/material.dart';
import 'media_query_example_screen.dart';
import 'orientation_builder_example_screen.dart';
import 'layout_builder_example_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _go(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demos responsives')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => _go(context, const MediaQueryExampleScreen()),
              child: const Text('Exemple amb MediaQuery'),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () =>
                  _go(context, const OrientationBuilderExampleScreen()),
              child: const Text('Exemple amb OrientationBuilder'),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => _go(context, const LayoutBuilderExampleScreen()),
              child: const Text('Exemple amb LayoutBuilder'),
            ),
          ],
        ),
      ),
    );
  }
}
