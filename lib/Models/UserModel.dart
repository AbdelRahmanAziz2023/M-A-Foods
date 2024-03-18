import 'package:flutter/material.dart';
import 'package:m_a_foods/Screens/HomeScreen.dart';

class User extends StatelessWidget {
  Map m;

  User(this.m, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (b) {
                return HomePage();
              }));
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          shadowColor: Colors.red,
          toolbarHeight: 100,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(80))),
          elevation: 20,
          backgroundColor: Colors.red[400],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.account_circle,
                    size: 100,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Con3(
                        child: Text(
                      m['name'],
                      style: const TextStyle(fontSize: 25),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Con3(
                        child: Text(
                      m['email'],
                      style: const TextStyle(fontSize: 25),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Con3(
                        child: Text(
                      m['phone'],
                      style: const TextStyle(fontSize: 25),
                    )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

Widget Con3({Widget? child}) {
  return Container(
    alignment: Alignment.center,
    width: 300,
    height: 50,
    decoration:
        BoxDecoration(border: Border.all(width: 5, color: Colors.black)),
    child: child,
  );
}
