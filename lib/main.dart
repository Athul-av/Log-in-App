import 'package:flutter/material.dart';
import 'package:log_in/splash.dart';
const SAVE_KEY_NAME='user loggedin';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login sample',
      home: splash(),    
    );
  }
}