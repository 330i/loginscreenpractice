import 'package:flutter/material.dart';

import 'info.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(
              children: [
                Spacer(
                  flex: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 500,
                    child: Text(
                      'Register',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'Email',

                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(
                  flex: 1,
                ),
                TextField(
                  controller: _password,
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(
                  flex: 2,
                ),
                Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: MaterialButton(
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        //Put register code here. To get Email, do _email.text and to get Password, do _password.text.
                        //Also set up a Firebase Auth to register. All info are on the Flutter Backend Course Doc.




                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Info())); //Go to logged in page
                      }
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(); //Go back to login page
                  },
                  child: Text('Login'),
                ),
                Spacer(
                  flex: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}