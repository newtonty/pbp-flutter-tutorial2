import 'package:money_tracker/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/pages/form.dart';
import 'package:money_tracker/pages/transaction.dart';

class DrawerMenu extends StatelessWidget {

  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [         
          ListTile(
            title: const Text('Menu'),
            onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
            }
          ), 
          ListTile(
            title: const Text('Riwayat Transaksi'),
            onTap: () {
              // Route menu ke halaman transaksi
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TransactionPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
