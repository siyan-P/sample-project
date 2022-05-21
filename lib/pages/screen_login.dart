import 'package:dementia_care/pages/screen_home.dart';
import 'package:dementia_care/pages/screen_signup.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class screen_login extends StatelessWidget {
  const screen_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white.withOpacity(100),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.zero,
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "images/dementia_login_whi.png",
                    height: 200,
                  ),
                ),
                //  mainAxisalignment:MainAxisAlignment.Center

                const Text(
                  'Welcome Back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // width: 5000,
                    color: Colors.white12,
                    child: Column(
                      children: [
                        Image.asset(
                          "images/login.jpg",
                          height: 140,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              // errorBorder:
                              border: OutlineInputBorder(),
                              hintText: 'eg: msp@088',
                              labelText: 'user name',
                              fillColor: Colors.grey,
                              prefixIcon:
                                  Icon(Icons.person_pin_circle_outlined),
                              prefixIconColor: Colors.purple,
                              suffixIconColor: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              // errorBorder:
                              border: OutlineInputBorder(),
                              hintText: 'eg: Xct@9990',
                              labelText: 'password',
                              fillColor: Colors.grey,
                              prefixIcon: Icon(Icons.password_rounded),
                              //  prefixIconColor: Colors.purple,
                              suffixIconColor: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Forgott Password?'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              //navigation to login page!
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const screen_home()));
                            },
                            icon: const Icon(Icons.logout_outlined),
                            label: const Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Dose not have account?'),
                            TextButton(
                              onPressed: () {
                                //navigation to signup page
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const screen_signup()));
                              },
                              child: const Text(
                                'SignUp',
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
                )
              ],
            ),
          ),
        ));
  }
}
