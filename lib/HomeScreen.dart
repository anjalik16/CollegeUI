import 'package:flutter/material.dart';

import './UserProfile.dart';
import './UserPreferences.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: new SafeArea(
      top: false,
    bottom: false,
    child: new ListView(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    children: <Widget>[
      new RaisedButton(
    child: Text('Go to User Profile'),
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => UserProfile(),
              )
          )
      ),
        new RaisedButton(
        child: Text('Go to User Preferences'),
    color: Theme.of(context).primaryColor,
    textColor: Colors.white,
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(
    builder: (BuildContext context) => UserPreferences(),
    )
    )
    ),
      ]
    )
    )
    );
  }
}
