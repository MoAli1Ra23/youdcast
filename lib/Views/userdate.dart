import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../feature/audio_player/model/user.dart';

class UserUI extends StatelessWidget {
  const UserUI({super.key});

  @override
  Widget build(BuildContext context) {
            print("bkmdlksmclsm;sw");
            // var user= context.watch<User>();

    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
      
        
           body:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
           Selector<User,String>(builder: (context, user, child) =>    Text( user,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900),), selector: (context,  user) {
            return user.name;
            
           },) ,
            ElevatedButton(onPressed: () {
                              Provider.of<User>(context,listen: false).updatename();
              print("name build");
            },
             child: const Text("name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)),
    
Selector<User,String>(builder: (context, user, child) =>    Text( user,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900),), selector: (context,  user) {
            return user.age;
            
           },) ,              ElevatedButton(onPressed: () {
                Provider.of<User>(context,listen: false).updateagr();
                print("age build");
              },
             child: const Text("age",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)),
    
    
    
          ],)
          
        
      ),
    );
  }
}