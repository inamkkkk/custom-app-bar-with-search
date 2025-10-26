import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:custom_app_bar_search/models/app_state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text('Home Screen Content'),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return AppBar(
      title: appState.isSearching
          ? TextField(
              decoration: InputDecoration(
                hintText: 'Search...', // Changed hint text
                border: InputBorder.none,
              ),
              onChanged: (text) {
                // Handle search text changes here
              },
            )
          : Text('My App'),
      actions: <Widget>[
        if (appState.isSearching)
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              appState.toggleSearch();
            },
          ) else
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              appState.toggleSearch();
            },
          ),
      ],
    );
  }
}