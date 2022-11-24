import 'package:flutter/material.dart';
import 'package:log_in/home.dart';

import 'package:log_in/login.dart';
import 'package:log_in/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Center(child: CircleAvatar(radius: 100 ,
     backgroundColor: Colors.white,
     child:Image.asset("assets/image/splashimg.jpg",),
     ),
     ), 
    );
  }


  Future<void> gotoLogin()async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> Login()));
  }


  Future<void>checkUserLoggedIn()async{
    final _sharedprefs= await SharedPreferences.getInstance();
    final userLoggedIn=_sharedprefs.getBool(SAVE_KEY_NAME);
    if(userLoggedIn==null||userLoggedIn==false){
      gotoLogin();
    }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1)=>homescreen()));
    }
  }
  
}