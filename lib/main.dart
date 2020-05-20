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
  bool _rememberMeFlag = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Complaint Corner',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[700],
                ),
              ),
              Text(
                'Powered by Vdoers',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 350,
                height: 70,
              ),
              TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  hintText: 'Required',
                  labelText: 'Mobile Number ',
                  counterText: '0/10',
                  border: const OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  isDense: true,
                ),
              ),
              SizedBox(
                width: 150,
                height: 20,
              ),
              TextFormField(
                maxLength: 30,
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  counterText: '0/30',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Required',
                  labelText: 'Password ',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  isDense: true,
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: Checkbox(
                      value: _rememberMeFlag,
                      onChanged: (value) {
                        setState(() {
                          _rememberMeFlag = !_rememberMeFlag;
                        });
                      },
                    ),
                    onTap: () => setState(() {
                      _rememberMeFlag = !_rememberMeFlag;
                    }),
                  ),
                  Text(
                    'Remember me',
                    style: new TextStyle(color: Colors.black),
                  ),
                ],
              ),
              ButtonTheme(
                minWidth: 310,
                height: 50,
                child: RaisedButton(
                  color: Colors.blue[450],
                  onPressed: () {
                    setState(
                      () {
                        if (checkMandatoryFields()) {
                          _name = _nameController.text;
                          _password = _passwordController.text;
                          //Call Login Api

                          Fluttertoast.showToast(msg: 'Login Successful');
                        }
                      },
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Forgot password ?",
                style: new TextStyle(color: Colors.pink[200],fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool checkMandatoryFields() {
    if (_nameController.text.isEmpty) {
      Fluttertoast.showToast(msg: 'UserName can not be empty');
      return false;
    } else if (_passwordController.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Password can not be empty');
      return false;
    } else {
      return true;
    }
  }
}
