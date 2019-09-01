import 'package:flutter/material.dart';
List<String> _ynlist = <String>['', 'Yes', 'No'];
String _yn = '';

List<String> _bigsmall = <String>['', 'Yes', 'No'];
String _bs = '';

List<String> _pubpriv = <String>['', 'Public', 'Private', 'Both'];
String _pp = '';
class UserPreferences extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('User Preferences'),
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
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.home),
                      labelText: 'Stay in home state?',
                    ),
                    isEmpty: _yn == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _yn,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _ynlist.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.beach_access),
                      labelText: 'Enter if you like the cold',
                    ),
                    isEmpty: _yn == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _yn,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _ynlist.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.home),
                      labelText: 'Big or small school?',
                    ),
                    isEmpty: _bs == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _bs,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _bigsmall.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.public),
                      labelText: 'Public schools, private schools, or both',
                    ),
                    isEmpty: _pp == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _pp,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _pubpriv.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.label_important),
                      labelText: 'More Equal Gender Ratio?',
                    ),
                    isEmpty: _yn == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _yn,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _ynlist.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.rowing),
                      labelText: 'Enter if you want sports',
                    ),
                    isEmpty: _yn == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _yn,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _ynlist.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.nature_people),
                      labelText: 'Do you have volunteer hours?',
                    ),
                    isEmpty: _yn == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _yn,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _ynlist.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
              new FormField<String>(
                builder: (FormFieldState<String> state) {
                  return InputDecorator(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.work),
                      labelText: 'Do you have work hours?',
                    ),
                    isEmpty: _yn == '',
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _yn,
                        isDense: true,
                        onChanged: (String newValue) {
                        },
                        items: _ynlist.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
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

