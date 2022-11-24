
import 'package:flutter/material.dart';
import 'package:log_in/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homescreen extends StatelessWidget {
   homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 29, 112, 87),
    title:Text("Chat List"),
    centerTitle: true,
    actions: [
      IconButton(onPressed: (){
        signout(context);
      }, icon:Icon(Icons.logout),)
    ],
   
   ),
   body: ListView(
    
    children: [
      ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/image/salman.JPG"),),
        title: Text("Salman"),
        subtitle: Text("active 2m before"),
        trailing: IconButton(onPressed:(){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
      ListTile(
        
        leading: ConstrainedBox(constraints: BoxConstraints(maxHeight:64,maxWidth: 64,minHeight: 44,minWidth: 44,),
        child: Image.asset("assets/image/nidhin.JPG"),),
      title: Text("Nidhin"),
      subtitle: Text("active 5h before"),
      trailing: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
   
      ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/image/ameen.jpg"),),
        title: Text("Ameen"),
        subtitle: Text("active now"),
        trailing: IconButton(onPressed:(){}, icon:Icon(Icons.camera_alt_outlined)),
      ),

       ListTile(
        leading: ConstrainedBox(constraints: BoxConstraints(maxHeight:64,maxWidth: 64,minHeight: 44,minWidth: 44),
        child: Image.asset("assets/image/farshad.JPG"),),
      title: Text("Farshad"),
      subtitle: Text("active 2d before"),
      trailing: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
      ),

        ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/image/salman2.JPG"),),
        title: Text("Salman2"),
        subtitle: Text("active 1h before"),
        trailing: IconButton(onPressed:(){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
       ListTile(
        leading: ConstrainedBox(constraints: BoxConstraints(maxHeight:64,maxWidth: 64,minHeight: 44,minWidth: 44),
        child: Image.asset("assets/image/salam.JPG"),),
      title: Text("Salam"),
      subtitle: Text("active 20m before"),
      trailing: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
       ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/image/sharath.png"),),
        title: Text("Sharath"),
        subtitle: Text("active now"),
        trailing: IconButton(onPressed:(){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
       ListTile(
        leading: ConstrainedBox(constraints: BoxConstraints(maxHeight:64,maxWidth: 64,minHeight: 44,minWidth: 44),
        child: Image.asset("assets/image/rishad.jpg"),),
      title: Text("Rishad"),
      subtitle: Text("active 3h before"),
      trailing: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
       ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/image/gokul.jpg"),),
        title: Text("Gokul"),
        subtitle: Text("active 8m before"),
        trailing: IconButton(onPressed:(){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
       ListTile(
        leading: ConstrainedBox(constraints: BoxConstraints(maxHeight:64,maxWidth: 64,minHeight: 44,minWidth: 44),
        child: Image.asset("assets/image/vyshak.jpg"),),
      title: Text("vyshak"),
      subtitle: Text("active 30m before"),
      trailing: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
       ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/image/hrithik.png"),),
        title: Text("Hrithik"),
        subtitle: Text("active now"),
        trailing: IconButton(onPressed:(){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
      
       ListTile(
        leading: ConstrainedBox(constraints: BoxConstraints(maxHeight:64,maxWidth: 64,minHeight: 44,minWidth: 44),
        child: Image.asset("assets/image/saheer.JPG"),),
      title: Text("Saheer"),
      subtitle: Text("active 1w before"),
      trailing: IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
      ),
    ],
   ),
    );
    
  }

  signout (BuildContext ctx)async{

      final _sharedprefs= await SharedPreferences.getInstance();
    await _sharedprefs.clear();
     
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=>Login()));

  }
}