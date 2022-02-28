import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanqr/pages/direcciones_page.dart';
import 'package:scanqr/pages/mapas_page.dart';
import 'package:scanqr/pages/widgets/custom_navigatorBar.dart';
import 'package:scanqr/pages/widgets/scan_button.dart';
import 'package:scanqr/providers/ui_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
          ),
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    print(currentIndex);
    switch (currentIndex) {
      case 0:
        return const MapasPage();
      case 1:
      default:
        return const DireccioensPage();
    }
  }
}