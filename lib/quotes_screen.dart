import 'package:flutter/material.dart';
import 'package:flutter_left_navigation/appdata_quotes.dart';
import 'package:flutter_left_navigation/navBar.dart';
import 'package:share_plus/share_plus.dart';
import 'display_quotes.dart';

class QuotesPageView extends StatefulWidget {
  const QuotesPageView({Key? key}) : super(key: key);

  @override
  State<QuotesPageView> createState() => _QuotesPageViewState();
}

class _QuotesPageViewState extends State<QuotesPageView> {

  var _selectedIndex = 0;

  var _gotoIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('James William Quotes'),
          backgroundColor: Colors.green,
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text("Share")),
              ],
              elevation: 2,
              onSelected: (value) {
                if (value == 1) {
                  _shareInfo();
                }
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50.0),
              height: 200.0,
              child: PageView.builder(
                //selection
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                //page movement
                controller: PageController(viewportFraction: 0.7), //slescted box size
                //total length
                itemCount: appDataQuotes.length,
                //Display quotes
                itemBuilder: (context, index) {
                  var quotes = appDataQuotes[index];
                  var scale = _selectedIndex == index ? 1.0 : 0.8;
                   return TweenAnimationBuilder(
                      tween: Tween(begin: scale, end: scale),
                      duration: const Duration(milliseconds: 350),
                      child: DisplayQuotes(
                        appData: quotes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale( //2D
                          scale: value,
                          child: child,
                        );
                      });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new Text((_selectedIndex + 1).toString()+ '/' + appDataQuotes.length.toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
  _shareInfo() {
    print('----------->Share');

    print(appDataQuotes[_gotoIndex].quotes);
    Share.share(appDataQuotes[_gotoIndex].quotes);
  }
}

