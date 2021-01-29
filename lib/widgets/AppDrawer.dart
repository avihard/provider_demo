import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Drawer(
      child: Column(
        children: [
          DrawerHeader(decoration: BoxDecoration(
            color: Colors.blueAccent
          ),),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
            onTap: (){
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            title: Text("Setting"),
            leading: Icon(Icons.settings),
            onTap: (){
              Navigator.pushNamed(context, '/setting');
            },
          ),

        ],
      ),
    ));
  }
}
