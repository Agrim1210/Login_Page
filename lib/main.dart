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
  final _controller = TextEditingController();
  String name = "";

 
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
                    controller: _controller,
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
                    onPressed:(){setState(() {
                     name= _controller.text;
                    });},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
