import 'package:flutter/material.dart';
import 'package:flutter_left_navigation/navBar.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('Personal Profile'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/avatar_image.jpg'),
              ),
              Text(
                'Sharini Senthil Kumar',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 25.0,
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 22.0,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2.5,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 150.0,
                child: Divider(
                  color: Colors.green.shade900,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.green.shade900,
                  ),
                  title: Text(
                    'sharinisenthil00@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 22.0,
                      color: Colors.green.shade900,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.green.shade900,
                  ),
                  title: Text(
                    'Chennai',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 22.0,
                      color: Colors.green.shade900,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
