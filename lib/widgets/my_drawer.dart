import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[800],
              ),
              currentAccountPicture: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/logo.jpeg')),
              accountName: Text('App Cuauhtémoc'),
              accountEmail: Text('Cuauhtémoc, Colima, México.')),
         
          ListTile(
            title: const Text('Presidencia'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Secretaría de ayuntamiento'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Dif municipal'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Oficialía mayor'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
