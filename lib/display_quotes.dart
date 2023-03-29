import 'package:flutter/material.dart';
import 'appdata_quotes.dart';

class DisplayQuotes extends StatelessWidget {

  final AppData appData;

  const DisplayQuotes({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22.0,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 250.0,
                    child: Text(
                      appData.quotes,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}