import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/pages/home.dart';

import 'blocs/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: MaterialAppTheme(),
    );
  }
}

class MaterialAppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      home: HomePage(),
      theme: theme.getTheme(),
    );
  }
}