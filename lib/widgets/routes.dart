import 'package:flutter/cupertino.dart';
import 'package:provider_demo/screen/about.dart';
import 'package:provider_demo/screen/home.dart';
import 'package:provider_demo/screen/setting.dart';

var customRoutes = <String , WidgetBuilder>{
  '/' : (context) => Home(),
  '/about' : (context) => About(),
  '/setting' : (context) => Setting()
};