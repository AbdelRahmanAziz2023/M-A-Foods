import 'package:flutter/material.dart';
import 'package:m_a_foods/Data/Lists.dart';
import 'package:m_a_foods/Models/Function.dart';
import 'package:m_a_foods/Models/LoginModel.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();

  TextEditingController Name = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController phone = TextEditingController();

  bool ispass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ABar(con: context),
      body: ListView(children: [
        const SizedBox(
          height: 100,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.all(20),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: Name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon:
                        const Icon(Icons.drive_file_rename_outline_sharp),
                    label: const Text('Name'),
                    hintText: 'Enter Your Name..',
                  ),
                ),
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: const Icon(Icons.phone),
                    label: const Text('Phone'),
                    hintText: 'Enter Your Phone..',
                  ),
                ),
              ),
              MaterialButton(
                textColor: Colors.white,
                onPressed: () {
                  print('object');
                  users.add({
                    'name': Name.text,
                    'password': password.text,
                    'email': email.text,
                    'phone': phone.text
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (b) {
                    return Login();
                  }));
                },
                color: Colors.red[400],
                child: const SizedBox(
                    width: 100,
                    height: 40,
                    child: Row(
                      children: [
                        Icon(Icons.add_task),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Register')
                      ],
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
