import 'package:Login_Page/constants.dart';
import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  var newName;
  final newNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF005CA5),
          title: Text(
            'SignUp',
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter Your Mobile Number',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE56497),
                ),
                
              ),
              Text('We will send you an OTP code on your mobile number'),
              SizedBox(height: 50,),
              TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: newNameController,
                decoration: kTextFieldDecoration,
              ),

              ButtonTheme(
                minWidth: 310,
                height: 50,
                child: RaisedButton(
                  color:Color(0xFF005CA5),
                  onPressed: () {},
                  child: Text(
                    'Send OTP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
