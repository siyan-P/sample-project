import 'package:dementia_care/pages/screen_home.dart';
import 'package:dementia_care/pages/screen_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen_signup extends StatefulWidget {
  const screen_signup({Key? key}) : super(key: key);

  @override
  State<screen_signup> createState() => _screen_signupState();
}

//dropdowm list--male--female--other,
String dropdownvalue = 'Male';
var items = [
  'Male',
  'Female',
  'Other',
];

class _screen_signupState extends State<screen_signup> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "images/dementia_login_whi.png",
                    height: 200,
                  ),
                ),
                const Text(
                  "Let's Create an Account!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Image.asset(
                  "images/login.jpg",
                  height: 156,
                ),
                //  const SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: TextFormField(
                            //  obscureText: true,
                            decoration: const InputDecoration(
                              // errorBorder:
                              border: OutlineInputBorder(),
                              hintText: 'eg: Octavia',
                              labelText: 'Enter your Name',
                              fillColor: Colors.grey,
                              prefixIcon: Icon(Icons.account_circle),
                              //  prefixIconColor: Colors.purple,
                              suffixIconColor: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: TextFormField(
                            // obscureText: true,
                            decoration: const InputDecoration(
                              // errorBorder:
                              border: OutlineInputBorder(),
                              hintText: 'eg:Octavia088@gmail.com',
                              labelText: 'Email',
                              fillColor: Colors.grey,
                              prefixIcon: Icon(Icons.email_outlined),
                              //  prefixIconColor: Colors.purple,
                              suffixIconColor: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: TextFormField(
                          //  obscureText: true,
                            decoration: const InputDecoration(
                              // errorBorder:
                              border: OutlineInputBorder(),
                              hintText: 'eg: 32',
                              labelText: 'Age',
                              fillColor: Colors.grey,
                              prefixIcon: Icon(Icons.youtube_searched_for),
                              //  prefixIconColor: Colors.purple,
                              suffixIconColor: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          //  color: Colors.red,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border:  OutlineInputBorder()),
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                  value: items, child: Text(items));
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                dropdownvalue = newValue.toString();
                              });
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              // errorBorder:
                              border: OutlineInputBorder(),
                              hintText: 'eg: Octavia@90',
                              labelText: 'password',
                              fillColor: Colors.grey,
                              prefixIcon: Icon(Icons.password_rounded),
                              //  prefixIconColor: Colors.purple,
                              suffixIconColor: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 8, bottom: 8),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              // errorBorder:
                              border: OutlineInputBorder(),
                              hintText: 'eg: Octavia@90',
                              labelText: 'Confrom password',
                              fillColor: Colors.grey,
                              prefixIcon: Icon(Icons.password),
                              //  prefixIconColor: Colors.purple,
                              suffixIconColor: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              //navigation to login page!
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const screen_home()));
                            },
                            icon: const Icon(Icons.logout_outlined),
                            label: const Text(
                              'SignUp',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Have an Account?'),
                            TextButton(
                              onPressed: () {
                                //navigation to signup page
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const screen_login()));
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
