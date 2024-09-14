

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  var email;
  var password;
  DashboardScreen({required this.email,required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.logout
          ),
          
        ),
        
        actions:[
            IconButton(
              icon: Icon(Icons.search),
              
              onPressed: () {},
            ), 
          ], 
        automaticallyImplyLeading: false,
      backgroundColor: Colors.green[400],
        title: Text("Dashboard Screen",
        style: Theme.of(context).textTheme.headlineMedium,),
           
      ),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
           
            
            children: [
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text("$email " ,
                  style: Theme.of(context).textTheme.displaySmall,),
                
                ),
              ),
              SizedBox(
                height: 50,
              ),
               Container(
                color: Colors.indigo,
                child: Center(
                  child: Text( "$password",
                  style: Theme.of(context).textTheme.displaySmall,),
                
                ),
              ),
            ],

              
             
            
          ),
        ),
      ),
      
    
    );
    
  }
}