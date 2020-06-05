import 'package:Login_Page/TextWidgets.dart';
import 'package:Login_Page/homesceen.dart';
import 'package:Login_Page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './constants.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var name;
  var password;
  bool rememberMe=false;

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  bool rememberMeFlag = false;
  
  @override
  void initState() {
    super.initState();
    getValue();
  }
 

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getValue(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              name != null &&
              password != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          } else {
            return Scaffold(
              resizeToAvoidBottomPadding: false,
              body: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MainTitle(
                      title: 'Complaint Corner',
                    ),
                    BelowTitle(
                      belowTitle: 'Powered by Vdoers',
                    ),
                    SizedBox(
                      width: 350,
                      height: 70,
                    ),
                    TextFormField(
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      controller: nameController,
                      decoration: kTextFieldDecoration,
                    ),
                    SizedBox(
                      width: 150,
                      height: 20,
                    ),
                    TextFormField(
                      maxLength: 30,
                      controller: passwordController,
                      obscureText: true,
                      decoration: kPassTextFieldDecoration,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Checkbox(
                            value: rememberMeFlag,
                            onChanged: (value) {
                              setState(() {
                                rememberMeFlag = !rememberMeFlag;
                              });
                            },
                          ),
                          onTap: () => setState(() {
                            rememberMeFlag = !rememberMeFlag;
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
                        color: Color(0xFF005CA5),
                        onPressed: () async {
                          if (checkMandatoryFields()) {
                            if (rememberMeFlag) {
                              setValues();
                              getValue();
                            }
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password ?",
                        style: new TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Does not have account ?',
                          style: TextStyle(fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.pinkAccent,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }
        });
  }

  bool checkMandatoryFields() {
    if (nameController.text.isEmpty) {
      Fluttertoast.showToast(msg: 'UserName can not be empty');
      return false;
    } else if (passwordController.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Password can not be empty');
      return false;
    } else {
      return true;
    }
  }

  void setValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', nameController.text.toString());
    prefs.setString('password', passwordController.text.toString());
    prefs.setBool('rememberMe', rememberMeFlag);
    print('values are set');
  }

  Future getValue() async {
    print('getting value ');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('name');
    String password = prefs.getString('password');
    bool rememberMe = prefs.getBool('rememeberMe');
    print('name: ${name}');
    print('password: ${password}');
    print('rememberMe: ${rememberMe}');
  }
}
