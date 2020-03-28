import 'package:flutter/material.dart';
import 'package:wejog1/dashboard.dart';
import 'dart:math' as math;

class ProfilePageDesign extends StatefulWidget {
  
  @override
  _ProfilePageDesignState createState() => _ProfilePageDesignState();
}

class _ProfilePageDesignState extends State<ProfilePageDesign> {
  
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,

    );

  }

}

class ProfilePage extends StatelessWidget {

  TextStyle _style(){
      return TextStyle(
        fontWeight: FontWeight.bold
      );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text("Name"),
            
            SizedBox(height: 4,),
            Text("John Doe", style: _style(),),
            
            SizedBox(height: 16,),
            Text("Email", style: _style(),),
            
            SizedBox(height: 4,),
            Text("john@utm.my"),
            
            SizedBox(height: 16,),
            Text("Location", style: _style(),),
            
            SizedBox(height: 4,),
            Text("Skudai, Johor"),
            
            SizedBox(height: 16,),
            Text("Nationality", style: _style(),),
            
            SizedBox(height: 4,),
            Text("Malaysian"),
          ],

        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget

  with PreferredSizeWidget{

  @override
  Size get preferredSize => Size(double.infinity, 320);

  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
        color: Colors.green[500],
          
        ),

        child: Column(
          children: <Widget>[
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white,),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },

                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Column(
                children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/avatar.png'),
                          )
                      ),
                    ),

                    Text("John Doe", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),)

                  ],

                ),

                Column(

                  children: <Widget>[
                    Text("Avg. foot steps per day", style: TextStyle(
                      color: Colors.white
                    ),),

                    Text("7500", style: TextStyle(
                        fontSize: 26,
                        color: Colors.white
                    ),)

                  ],

                ),

          ],

            ),
            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Avg. active time", style: TextStyle(
                      color: Colors.white
                    ),),

                    Text("90 mins", style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),)

                  ],

                ),

                SizedBox(width: 10,),
                  Column(

                  children: <Widget>[
                  Text("Avg walk distance",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                    Text("5KM", style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                    ))
                  ],
                ),

                SizedBox(width: 16,)
              ],
            ),

            SizedBox(height: 8,),



         

          ],

        ),

      ),

    );

  }

}



class MyClipper extends CustomClipper<Path>{



  @override

  Path getClip(Size size) {

    Path p = Path();



    p.lineTo(0, size.height-70);

    p.lineTo(size.width, size.height);



    p.lineTo(size.width, 0);



    p.close();



    return p;

  }



  @override

  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;

  }

}