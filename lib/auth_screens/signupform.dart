import 'package:flutter/material.dart';
import 'package:amber/services/auth_service.dart';

class SignUpForm extends StatelessWidget {
  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String _email, _password, error = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[800],
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Provide an email';
                  } else
                    return null;
                },
                onChanged: (input) => _email = input,
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
              child: TextFormField(
                validator: (input) {
                  if (input.length < 6) {
                    return 'Password needs to be Longer';
                  } else
                    return null;
                },
                onChanged: (input) => _password = input,
                obscureText: true,
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
                    onPressed: () async {
                      if (_formkey.currentState.validate()) {
                        dynamic result = await _auth
                            .createUserWithEmailAndPassword(_email, _password);
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            'Wrapper', (Route<dynamic> route) => false);
                      }
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(),
                    )))
          ],
        ),
      ),
    );
  }
}
