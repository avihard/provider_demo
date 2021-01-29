import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/models/ui.dart';
import 'package:provider_demo/widgets/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Ui>(create: (_) => Ui()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        title: "State Management Application",
        initialRoute: '/',
        routes: customRoutes,
      ),
    );
  }
}
