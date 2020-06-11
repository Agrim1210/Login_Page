import 'package:flutter/material.dart';
import 'models/Data.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  final searchKey = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,

      appBar: AppBar(
        backgroundColor: Color(0xFF005CA5),
        title: Text(
          'HomeScreen',
        ),
      ),
      body: _buildList(context),
    );
  }
  // TextFormField(
  //       keyboardType: TextInputType.number,
  //       controller: searchKey,
  //       decoration: kTextFieldDecoration,
  //     ),

  Widget _buildList(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) =>
              dataCard(context, index)),
    );
  }

  Widget dataCard(BuildContext context, int index) {
    final data = dataList[index];
    return new Container(
      child: Card(
        color: Colors.cyan[100],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      data.bankName,
                      style: new TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(data.id),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      data.name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_right),
                          onPressed: null),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(data.location),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      data.mobileNo,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Technician Assigned',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
