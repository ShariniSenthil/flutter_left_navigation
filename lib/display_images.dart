import 'package:flutter/material.dart';
import 'package:flutter_left_navigation/appdata_images.dart';


class DisplayImage extends StatelessWidget {

  final AppDataImages appData;

  const DisplayImage({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(appData.images),
          //fit: BoxFit.cover
        ),
      ),
    );
  }
}

