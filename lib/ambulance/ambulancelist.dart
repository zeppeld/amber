import 'package:flutter/material.dart';

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        actions: [
          Text("a",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 50,
                  decoration: TextDecoration.none,
                  color: Colors.orange)),
          Text("MBER",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 30,
                  decoration: TextDecoration.none,
                  color: Colors.white))
        ],
        leading: Icon(Icons.menu),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          margin: EdgeInsets.only(top: 20),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 72),
                        Text(
                          "Kathmandu",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(width: 32),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: Colors.white, size: 35),
                          onPressed: () {},
                        ),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 72),
                        Text(
                          "Banepa",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(width: 42),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: Colors.white, size: 35),
                          onPressed: () {},
                        ),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 72),
                        Text(
                          "Dhulikhel",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(width: 42),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: Colors.white, size: 35),
                          onPressed: () {},
                        ),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 72),
                        Text(
                          "Panauti",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(width: 42),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: Colors.white, size: 35),
                          onPressed: () {},
                        ),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
