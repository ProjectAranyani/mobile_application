import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.rectangle,
              image: const DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                alignment: Alignment.center,
                fit: BoxFit.fitWidth,
              ),
            ),
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          ListTile(
            title: const Text('Your tasks'),
            leading: Icon(
              Icons.check_circle_outline,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onTap: () {
              Fluttertoast.showToast(
                msg: "Your tasks",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
              );
            },
          ),
          ListTile(
            title: const Text('Catalogue'),
            leading: Icon(
              Icons.book,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onTap: () {
              Fluttertoast.showToast(
                msg: "Catalogue",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
              );
            },
          ),
          ListTile(
            title: const Text('Profile'),
            leading: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onTap: () {
              Fluttertoast.showToast(
                msg: "Profile",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
              );
            },
          ),
          ListTile(
            title: const Text('Settings'),
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onTap: () {
              Fluttertoast.showToast(
                msg: "Settings",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
              );
            },
          ),
          ListTile(
            title: const Text('About'),
            leading: Icon(
              Icons.info,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onTap: () {
              Fluttertoast.showToast(
                msg: "About",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
              );
            },
          ),
        ],
      ),
    );
  }
}
