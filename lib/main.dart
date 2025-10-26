import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:custom_app_bar_search/screens/home_screen.dart';
import 'package:custom_app_bar_search/models/app_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Custom App Bar Search',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}