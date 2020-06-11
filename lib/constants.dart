import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  prefixIcon: Icon(Icons.phone_android),
  hintText: 'Required',
  labelText: 'Mobile Number ',
  // counterText: '0/10',
  hintMaxLines: 10,
  border: const OutlineInputBorder(),
  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
  isDense: true,
);
const kPassTextFieldDecoration = InputDecoration(
  hintMaxLines: 30,
  prefixIcon: Icon(Icons.lock),
  suffixIcon: Icon(
    Icons.visibility_off,
  ),
  border: const OutlineInputBorder(),
  hintText: 'Required',
  labelText: 'Password ',
  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
  isDense: true,
);
// const kPaddingBetweenCardContent=
