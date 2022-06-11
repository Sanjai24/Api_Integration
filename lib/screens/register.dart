import 'package:api_integrator/screens/home.dart';
import 'package:api_integrator/screens/profile.dart';
import 'package:api_integrator/utils/strings.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();
    TextEditingController _designation = TextEditingController();
    TextEditingController _phonenum = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('New App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        color: Colors.grey.shade900,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 2,
                ),
                Strings.registered
                    ? Container()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          TextField(
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                            controller: _name,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.grey.shade800),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                Strings.registered
                    ? Container()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                              "Designation",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                              controller: _designation,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.grey.shade800),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                          ]),
                Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                  controller: _phonenum,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey.shade800),
                ),
                Spacer(),
                Center(
                  child: Strings.registered
                      ? ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.lightGreenAccent[700]),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ProfilePage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 60),
                            child: Text(
                              "LOGIN",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        )
                      : TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(50)),
                              )),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 56),
                            child: Text(
                              "Register",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                ),
                Spacer(
                  flex: 3,
                ),
              ]),
        ),
      ),
    );
  }
}
