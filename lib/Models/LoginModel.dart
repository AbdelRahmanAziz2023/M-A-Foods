import 'package:flutter/material.dart';
import 'package:m_a_foods/Data/Lists.dart';
import 'package:m_a_foods/Models/Function.dart';
import 'package:m_a_foods/Models/RegisterModel.dart';
import 'package:m_a_foods/Models/UserModel.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ispass = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String error = '';
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ABar(con: context),
      body: ListView(children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(20),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
              ),
              Text(
                error,
                style: const TextStyle(color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: const Icon(Icons.attach_email),
                    label: const Text('Mail'),
                    hintText: 'Enter Your Email..',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: password,
                  obscureText: ispass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            ispass = !ispass;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                    label: const Text('PassWord'),
                    hintText: 'Enter Your Password..',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              MaterialButton(
                textColor: Colors.white,
                onPressed: () {
                  print('object');
                  for (int i = 0; i < users.length; i++) {
                    if (users[i]['email'] == email.text &&
                        users[i]['password'] == password.text) {
                      Navigator.push(context, MaterialPageRoute(builder: (b) {
                        return User(users[i]);
                      }));
                      n = 1;
                      print('found');
                    }
                  }
                  if (n == 0) {
                    setState(() {
                      error = 'User not Found';
                    });
                  }
                },
                color: Colors.red[400],
                child: Container(
                    width: 80,
                    height: 40,
                    child: const Row(
                      children: [
                        Icon(Icons.login),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Login')
                      ],
                    )),
              ),
              Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an acount?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (b) {
                              return Register();
                            }));
                          },
                          child: const Text('Register Now')),
                    ],
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
