import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[800],
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("a",
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 120,
                    decoration: TextDecoration.none,
                    color: Colors.orange)),
            Text("MBER",
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 70,
                    decoration: TextDecoration.none,
                    color: Colors.white))
          ]),
          SizedBox(height: MediaQuery.of(context).size.height * 0.5),
          Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width - 30,
              child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "Login");
                  },
                  child: Text("Login / SignUp",
                      style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Colors.white)))),
          SizedBox(height: 10),
          FlatButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "AmbulanceList");
            },
            child: Text("Sign In Anonomously",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none)),
          )
        ]));
  }
}
