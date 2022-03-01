import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanqr/providers/scan_list_provider.dart';

class DireccioensPage extends StatelessWidget {
  const DireccioensPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => ListTile(
        leading: Icon(
          Icons.home_outlined,
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
        },
      ),
    );
  }
}
