import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/ui.dart';
import 'package:provider_demo/widgets/AppDrawer.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Page'),
      ),
      drawer: AppDrawer(),
      body: SafeArea(child: Container(
        child: Consumer<Ui>(
          builder: (context, ui, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Font size is ${ui.fontSize.round()}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 8),
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      clipBehavior: Clip.hardEdge,
                      child: Slider.adaptive(
                        value: ui.sliderValue,
                        min: 10,
                        max: 50,
                        activeColor: Colors.purple,
                        inactiveColor: Colors.grey,
                        onChanged: (value) {
                          ui.fontSize = value;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        text:
                            "here using this slider you can change the text size of the whole application.",
                        style: TextStyle(
                            fontSize: ui.fontSize, color: ui.colorValue)))
              ],
            );
          },
        ),
      )),
    );
  }
}
