import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _name;
  var _password;

  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[400],
          title: Text('Login Page'),
        ),
        body: Container(
          child: Card(
            margin: EdgeInsets.all(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 10,
                  margin: EdgeInsets.all(25),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Required',
                      labelText: 'Name *',
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  margin: EdgeInsets.all(25),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                      ),
                      hintText: 'Required',
                      labelText: 'Password *',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonTheme(
                  minWidth: 310,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.lightGreen,
                    onPressed: () {
                      setState(() {
                        _name = _nameController.text;
                        _password = _passwordController.text;
                      });
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Text('Your name is $_name and Your password is $_password')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
