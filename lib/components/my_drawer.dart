import 'package:chat_app/auth/auth_service.dart';
import 'package:flutter/material.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
    void logout(){
    final _authService = AuthService();

    _authService.signOut();
  }
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo
          DrawerHeader(
              child: Center(
                  child: Icon(
            Icons.person,
            color: Theme.of(context).colorScheme.primary,
            size: 65,
          ))),
          //home list tile
          Padding(
            padding: const EdgeInsets.only(left :20),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home),
              onTap: (){
                //pop current drawwer
                Navigator.pop(context);
              },
            ),
          ),
          //settings list tile
          Padding(
            padding: const EdgeInsets.only(left :20),
            child: ListTile(
              title: const Text("S E T T I N G S"),
              leading: const Icon(Icons.settings),
              onTap: (){
                //pop current drawwer
                Navigator.pop(context);
                // navigate to settings page
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SettingsPage();
                }));
              },
            ),
          ),
            ],
          ),
          //logout listtile
          Padding(
            padding: const EdgeInsets.only(left :20,bottom: 30),
            child: ListTile(
              title: const Text("L O G O U T"),
              leading: const Icon(Icons.logout),
              onTap: (){
                logout();
              },
            ),
          ),
        ],
      ),
    );
  }
}
