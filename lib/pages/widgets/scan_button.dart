import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
    );
  }
}