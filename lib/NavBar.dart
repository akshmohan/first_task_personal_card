import 'package:first_task_second_try/Exit.dart';
import 'package:flutter/material.dart';
import 'package:first_task_second_try/Favorites.dart';
import 'package:first_task_second_try/Friends.dart';
import 'package:first_task_second_try/Notifications.dart';
import 'package:first_task_second_try/Share.dart';
import 'package:first_task_second_try/Policies.dart';
import 'package:first_task_second_try/Settings.dart';
import 'package:first_task_second_try/Exit.dart';




class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
      accountName: Text('Akshay Mohan'), accountEmail: Text('akshaymohan.career@gmail.com'),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image(
              image: AssetImage('assets/akshmo2.jpg'),
              width: screenWidth * 0.18,
              height: screenHeight * 0.18,
              fit: BoxFit.cover,
          ),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/tealbackground.jpg'), fit: BoxFit.cover),
        color: Colors.teal
    ),
    ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Favorites()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Friends()));

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Share()));

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.file_copy),
            title: Text('Policies'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Policies()));

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Exit()));

            },
          ),
        ],
      ),
    );
  }
}
