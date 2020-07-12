import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[800],
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: TextField(
              decoration: new InputDecoration(
                labelText: "Enter Name",
                labelStyle: TextStyle(fontSize: 24),
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: TextField(
              decoration: new InputDecoration(
                labelText: "Enter Email",
                labelStyle: TextStyle(fontSize: 24),
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: TextField(
              decoration: new InputDecoration(
                labelText: "Enter Password",
                labelStyle: TextStyle(fontSize: 24),
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15)),
              child: FlatButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "AmbulanceList");
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(),
                  )))
        ],
      ),
    );
  }
}
