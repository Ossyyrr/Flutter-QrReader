import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanqr/providers/scan_list_provider.dart';
import 'package:scanqr/utils/utils.dart';

class ScanTiles extends StatelessWidget {
  const ScanTiles({Key? key, required this.tipo}) : super(key: key);
  final String tipo;

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => Dismissible(
        key: UniqueKey(),
        background: Container(color: Colors.redAccent),
        onDismissed: (DismissDirection direction) {
          scanListProvider.borrarScanPorId(scans[i].id!);
        },
        child: ListTile(
          leading: Icon(
            tipo == 'http' ? Icons.home_outlined : Icons.map,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(scans[i].valor),
          subtitle: Text('id: ' + scans[i].id.toString()),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey,
          ),
          onTap: () {
            print(scans[i].id.toString());
            launchURL(context, scans[i]);
          },
        ),
      ),
    );
  }
}
