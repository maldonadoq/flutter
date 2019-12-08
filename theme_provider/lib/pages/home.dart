import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/blocs/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'), 
      ),
      body: ButtonList(),
      /*body: Center(
        child: Image.asset('assets/images/cat.jpeg'),
      ),*/
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => theme.setTheme(ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lime,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.lime
          )
        )),
      ),
    );
  }
}

class ButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);

    return Column(
      children: <Widget>[
        FlatButton(
          child: Text('Light'),
          onPressed: () => theme.setTheme(ThemeData.light()),
        ),
        FlatButton(
          child: Text('Dark'),
          onPressed: () => theme.setTheme(ThemeData.dark()),
        )
      ],
    );
  }
}