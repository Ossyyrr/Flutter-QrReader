import 'package:flutter/material.dart';
import 'package:scanqr/models/scan_model.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScannModel scan = ModalRoute.of(context)!.settings.arguments as ScannModel;

    return Scaffold(
      appBar: AppBar(title: const Text('Mapa')),
      body: SafeArea(
        child: Text(scan.valor),
      ),
    );
  }
}
