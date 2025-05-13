import 'package:flutter/material.dart';
import 'package:app_fluxolivrep/src/pages/users.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF000000),
        foregroundColor: const Color(0xFFFFFFFF),
        title: const Text('Admin - FluxoLivre'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Users'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const UsersPage()),
              );
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
