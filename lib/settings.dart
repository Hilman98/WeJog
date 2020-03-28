

import 'package:flutter/material.dart';
import 'package:wejog1/dashboard.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Text('Daily Target Settings', style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey, 
            ),),

            ListTile(
              title: Text('Daily steps target', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),),
              trailing: Text('10000', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green[700]),),
            ),
            
            ListTile(
              title: Text('Daily distance target', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),),
              trailing: Text('12000', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green[700]),),
            ),
            
            ListTile(
              title: Text('Daily calories to burn', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),),
              trailing: Text('2500', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green[700]),),
            ),

            Text(''),

            Text('Notification Settings', style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),),

            SwitchListTile(
              activeColor: Colors.green[400],
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text('Remind me to reach daily target', style: TextStyle( fontSize: 19.0, fontWeight: FontWeight.bold),),
              onChanged: (val){},
            ),

            SwitchListTile(
              activeColor: Colors.green[400],
              contentPadding: const EdgeInsets.all(0),
              value: false,
              title: Text('Remind me upon reaching target', style: TextStyle( fontSize: 19.0, fontWeight: FontWeight.bold),),
              onChanged: (val){},
            )
          ],
        ),
      ),
      
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
          )
        ),
        title: Title(
          color: Colors.white,
          child: Text("Settings"),
          
        ),
      
        
      ),
    );
  }
}


