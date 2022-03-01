import 'dart:developer';

import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        String barcodeScanRes =
            'https://fernando-herrera.com'; // await FlutterBarcodeScanner.scanBarcode('#3D8BEF', 'Cancelar', false, ScanMode.QR);
        // TODO Se puede escanear los códigos de barras: ScanMode.BARCODE
        log(barcodeScanRes);
      },
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
