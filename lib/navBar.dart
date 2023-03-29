import 'package:flutter/material.dart';
import 'package:flutter_left_navigation/company_profile.dart';
import 'package:flutter_left_navigation/images_screen.dart';
import 'package:flutter_left_navigation/personal_profile.dart';
import 'package:flutter_left_navigation/quotes_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text(
                  'James William',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.green.shade900
                ),
              ),
              accountEmail: Text(
                  'Version 2.0',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/james.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/jw_background.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text(
              'Quotes Text',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 15.0,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => QuotesPageView()));
            },
          ),
          ListTile(
            title: Text(
              'Quotes Images',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 15.0,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => ImagePageView()));
            },
          ),
          ListTile(
            title: Text(
              'Personal Profile',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 15.0,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PersonalProfile()));
            },
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 15.0,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CompanyProfile()));
            },
          ),
        ],
      ),
    );
  }
}



