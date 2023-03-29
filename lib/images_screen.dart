import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_left_navigation/appdata_images.dart';
import 'package:flutter_left_navigation/display_images.dart';
import 'package:flutter_left_navigation/navBar.dart';
import 'package:share_plus/share_plus.dart';

class ImagePageView extends StatefulWidget {
  const ImagePageView({Key? key}) : super(key: key);

  @override
  State<ImagePageView> createState() => _ImagePageViewState();
}

class _ImagePageViewState extends State<ImagePageView> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('James William Quotes'),
          backgroundColor: Colors.green,
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) =>
              [
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
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 500.0,
              child: PageView.builder(
                  // Selection - click listener
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  controller: PageController(viewportFraction: 20),
                  itemCount: appDataList.length,
                  itemBuilder: (context, index) {
                    var images = appDataList[index];
                    var _scale = _selectedIndex == index ? 1.0 : 0.8;
                    return TweenAnimationBuilder(
                        tween: Tween(begin: _scale, end: _scale),
                        duration: Duration(milliseconds: 350),
                        child: DisplayImage(
                          appData: images,
                        ),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: child,
                          );
                        });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new Text((_selectedIndex + 1).toString()+ '/' + appDataList.length.toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  _shareInfo() async{
    print('------------> _shareInfo');

    print(appDataList[_selectedIndex].images);

    ByteData imagebyte = await rootBundle.load(appDataList[_selectedIndex].images);
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/jw_image1.png';
    File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
    await Share.shareFiles([path]);
  }
}
