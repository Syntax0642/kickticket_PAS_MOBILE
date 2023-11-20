import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ModelProduct {
  String date = "";
  String title = "";
  String imageURL = "";
  IconData iconData = FontAwesomeIcons.listAlt;

  ModelProduct(String title, String date, String imageURL, IconData iconview) {
    this.title = title;
    this.date = date;
    this.imageURL = imageURL;
    this.iconData = iconview;
  }
}