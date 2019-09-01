import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('User Profile'),
      ),
      body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          key: _formKey,
          autovalidate: true,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.people),
                  hintText: 'Enter your gender',
                  labelText: 'Gender',
                ),
              ),
              new TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'DOB',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person_outline),
                  hintText: 'Enter your ethnicity',
                  labelText: 'Ethnicity',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person_pin),
                  hintText: 'Enter your home state',
                  labelText: 'Home State',
                ),
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.poll),
                  hintText: 'Enter your SAT Score',
                  labelText: 'SAT Score',
                ),
              ),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.flare),
                  hintText: 'Enter your Unweighted Cumulative GPA',
                  labelText: 'GPA',
                ),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.star),
                  hintText: 'Enter your First Choice Major',
                  labelText: 'Major',
                ),
              ),
              new RaisedButton(
                  child: Text('Back To Home Screen'),
                  color: Theme
                      .of(context)
                      .primaryColor,
                  textColor: Colors.white,
                  onPressed: () => Navigator.pop(context)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

