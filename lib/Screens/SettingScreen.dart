import 'package:flutter/material.dart';
import 'package:m_a_foods/Models/Function.dart';

class SettingUi extends StatefulWidget {
  SettingUi({Key? key}) : super(key: key);

  @override
  State<SettingUi> createState() => _SettingUiState();
}
class _SettingUiState extends State<SettingUi> {
  bool valNotify1=true;
  bool valNotify2=false;
  bool valNotify3=false;
  onChangefunction1(bool newvalue1)
  {
    setState(() {
      valNotify1= newvalue1;
    });
  }
  onChangefunction2(bool newvalue2)
  {
    setState((){
      valNotify2=newvalue2;
    });
  }

  onChangefunction3(bool newvalue3)
  {
    setState((){
      valNotify3=newvalue3;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:ABar(con:context,tit:'Setting'),
      body: Container(
        padding:const EdgeInsets.all(10),
        child:ListView(
          children: [
            const SizedBox(height: 50,),
            const Row(
              children:[
                Icon(Icons.person,color: Colors.blue,),
                SizedBox(width: 10,),
                Text("Account",style:TextStyle(fontSize:22,fontWeight:FontWeight.bold ),)
              ],),
            const Divider(height:20,thickness:1,),
            const SizedBox(height: 10,),
            buildAccountOption(context,"Change Password"),
            buildAccountOption(context,"Content Setting"),
            buildAccountOption(context,"social"),
            buildAccountOption(context,"language"),
            buildAccountOption(context,"Privacy and Security"),
            const SizedBox(height: 40,),
            const Row(
              children: [
                Icon(Icons.volume_up_outlined,color: Colors.blue,),
                SizedBox(width:10,),
                Text("Notifications",style:TextStyle(
                    fontSize: 22,
                    fontWeight:FontWeight.bold
                ),)
              ],
            ),
            const Divider(
              height: 20,thickness: 1,
            ),
            const SizedBox(height:10,),
            buildNotification("Theme Dark",valNotify1,onChangefunction1),
            buildNotification("Account Active",valNotify2,onChangefunction2),
            buildNotification("Opportunity",valNotify3,onChangefunction3),
            const SizedBox(height: 20,),
            Center(
              child:OutlinedButton(
                style:OutlinedButton.styleFrom(
                    padding:const EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)
                    )
                ),
                onPressed: (){
                  child:const Text("SIGN OUT",style:TextStyle(
                      fontSize: 16,
                      letterSpacing: 2.2,
                      color: Colors.black
                  ));
                }, child: null,
              ),
            )
          ],
        ) ,
      ),
    );
  }
}