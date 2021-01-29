import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/ui.dart';
import 'package:provider_demo/widgets/AppDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text =
      """A mixture between dependency injection (DI) and state management, built with widgets for widgets.
                It purposefully uses widgets for DI/state management instead of dart-only classes like Stream. The reason is, widgets are very simple yet robust and scalable.
                By using widgets for state management, provider can guarantee:""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<Ui>(
                builder: (context, ui, child) {
                  return RichText(
                      text: TextSpan(
                          text: text,
                          style: TextStyle(
                              color: ui.colorValue, fontSize: ui.fontSize)));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
