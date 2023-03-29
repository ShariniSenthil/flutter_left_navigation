import 'package:flutter/material.dart';
import 'package:flutter_left_navigation/navBar.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
        appBar: AppBar(
          title: Text('Company Profile'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(50.0),
                        child: Image.asset('images/company_logo.jpg'),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                          'Tidy life India Pvt Ltd',
                          style: TextStyle(
                            fontFamily: 'Oswald-Regular.ttf',
                            fontSize: 30.0,
                            color: Colors.green.shade900,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 200.0,
                    child: Divider(
                      color: Colors.green.shade900,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.green.shade900,
                    ),
                    title: Text(
                      '+91 8610338291',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontFamily: 'Oswald-Regular.ttf',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.green.shade900,
                    ),
                    title: Text(
                      'tidylifeindia@gmail.com',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontFamily: 'Oswald-Regular.ttf',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.web_asset_rounded,
                      color: Colors.green.shade900,
                    ),
                    title: Text(
                      'www.tidylifeindia.com',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontFamily: 'Oswald-Regular.ttf',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.green.shade900,
                    ),
                    title: Text(
                      'No.A3, Mahalakshimi Flats,\nSivagami Street,\nNew Perungalathur,\nChennai-600 062.',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontFamily: '',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}