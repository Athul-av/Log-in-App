

import 'package:flutter/material.dart';
import 'package:log_in/home.dart';
import 'package:log_in/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Login extends StatelessWidget {
  Login({super.key});

  final _username=TextEditingController();

  final _password=TextEditingController();
  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(50.0),
                
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    
                     TextFormField(
                      controller: _username,
                      maxLength: 15,
                      decoration: InputDecoration(
                        
                        hintText: "enter user name",
                        prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(),
                        label: Text("USER NAME"),
                          
                      ),
                     validator: (value){
                      if(value==null||value.isEmpty){
                        return"field is empty";
                      }else{
                        return null;
                      }
                     },
                    ),
                    SizedBox(height: 6,),
                   TextFormField(
                    controller: _password,
                    maxLength: 15,
                    obscureText: true,
                     decoration: InputDecoration(
                        
                        hintText: "enter password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        label: Text("PASSWORD"),
                        
                      ),
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return"field is empty";
                      }else{
                        return null;
                      }
                     },
                    ),
                    ElevatedButton.icon(onPressed: (){
                      if(_formkey.currentState!.validate()){
                        checklogin(context);
                      }else{
                        print("data empty");
                      }
                    }, icon:Icon(Icons.login), label:const Text("Log In"))
                  ],
                ),
            
            )),
            Expanded(
              flex: 2,
               
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  
                child:Image.asset("assets/image/login1.png",
               // fit: BoxFit.cover,
                ),
                        ),
              ),
            
          ],
          
              ),
        ),
      
    )
    );
  }

  Future <void> checklogin(BuildContext ctx)async{
    final username1=_username.text;
    final password1=_password.text;
    if(username1=="athul"&&password1=="12345"){
      
     final _sharedprefs= await SharedPreferences.getInstance();
    await _sharedprefs.setBool(SAVE_KEY_NAME, true); 
     
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=>homescreen()));

    }
    else{
   //snackbar
   ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text("Username and Password doesn't match")));
    }
  }
}