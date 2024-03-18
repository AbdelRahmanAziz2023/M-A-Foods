import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_a_foods/Data/Lists.dart';
import 'package:m_a_foods/Models/LoginModel.dart';
import 'package:m_a_foods/Screens/CartPage.dart';
import 'package:m_a_foods/Screens/SettingScreen.dart';

Widget txt({String? data, double? Fonts, Color? c}) {
  return Text(
    data!,
    style: TextStyle(fontSize: Fonts, fontWeight: FontWeight.bold, color: c),
    textAlign: TextAlign.center,
  );
}

Widget txt3({String? data, double? Fonts, Color? c}) {
  return Text(
    data!,
    style: TextStyle(fontSize: Fonts, fontWeight: FontWeight.bold, color: c),
  );
}

Widget txt2({String? data, double? Fonts, Color? c}) {
  return Text(
    data!,
    style: TextStyle(fontSize: Fonts, color: c),
    textAlign: TextAlign.center,
  );
}

Widget Con2({
  Widget? child,
}) {
  return Container(
    alignment: Alignment.centerLeft,
    width: double.infinity,
    margin: const EdgeInsets.all(2),
    child: child,
  );
}

Widget Con3({
  Widget? child,
}) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    margin: const EdgeInsets.all(2),
    child: child,
  );
}

PreferredSizeWidget ABar({String tit = '', BuildContext? con}) {
  return AppBar(
    shadowColor: Colors.red,
    toolbarHeight: 100,
    title: txt(data: tit, c: Colors.white, Fonts: 25),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(con!);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 20,
      ),
    ),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(80))),
    elevation: 20,
    backgroundColor: Colors.red[400],
  );
}

Widget Menu(BuildContext con) {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red[200]),
            accountName: txt(data: 'M&A Food', Fonts: 40, c: Colors.white),
            accountEmail: txt(
                data: 'The Greatest Of All Time', Fonts: 20, c: Colors.white)),
        Card(
          color: Colors.red[400],
          child: ListTile(
            onTap: () {
              Navigator.pop(con);
              Navigator.push(con, MaterialPageRoute(builder: (b) {
                return Login();
              }));
            },
            title: txt3(data: 'Login', Fonts: 20, c: Colors.white),
            trailing: const Icon(Icons.account_box),
          ),
        ),
        Card(
          color: Colors.red[400],
          child: ListTile(
            onTap: () {
              Navigator.pop(con);
              Navigator.push(con, MaterialPageRoute(builder: (b) {
                return CartPage();
              }));
            },
            title: txt3(data: 'Cart', Fonts: 20, c: Colors.white),
            trailing: const Icon(Icons.restaurant_menu),
          ),
        ),
        Card(
          color: Colors.red[400],
          child: ListTile(
            onTap: () {
              Navigator.pop(con);
              Navigator.push(con, MaterialPageRoute(builder: (b) {
                return SettingUi();
              }));
            },
            title: txt3(data: 'Setting', Fonts: 20, c: Colors.white),
            trailing: const Icon(Icons.settings),
          ),
        ),
      ],
    ),
  );
}

Widget Con({Widget? child, double? width, double? height, double? radius}) {
  return Container(
    alignment: Alignment.center,
    width: width,
    height: height,
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.red[400],
        borderRadius: BorderRadius.circular(radius!),
        border: Border.all(width: 2, color: Colors.brown)),
    child: child,
  );
}

Padding buildNotification(String title, bool value, Function onChangeMethod) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        txt(
          data: title,
          Fonts: 20,
          c: Colors.grey[700],
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: Colors.blue,
            trackColor: Colors.grey,
            value: value,
            onChanged: (bool newvalue) {
              onChangeMethod(newvalue);
            },
          ),
        )
      ],
    ),
  );
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text("option 1"), Text("option 2")],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close"))
              ],
            );
          });
    },
    child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: ListTile(
          leading: txt(
            data: title,
            Fonts: 20,
            c: Colors.grey[700],
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[700],
          ),
        )),
  );
}

double sumdrink(double sd) {
  for (int i = 0; i < cartd.length; i++) {
    int f;
    sd += ((double.parse(cartd[f = i].Price!)) * (cartd[f = i].count!));
  }
  return sd;
}

double sumfood(double sf) {
  for (int i = 0; i < cartf.length; i++) {
    int f;
    sf += ((double.parse(cartf[f = i].Price!)) * (cartf[f = i].count!));
  }
  return sf;
}
