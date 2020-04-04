import 'package:deeppatel/pages/home_page.dart';
import 'package:deeppatel/widgets/dark_mode.dart';
import 'package:flutter/material.dart';
import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: DeepPatel(),
    );
  }
}
class DeepPatel extends StatelessWidget {
  const DeepPatel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deep Patel',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
