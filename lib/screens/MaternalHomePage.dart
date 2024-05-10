import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MaternalhomePage extends StatefulWidget{
  const MaternalhomePage({super.key});
  @override
  maternalHomePageState createState() => maternalHomePageState();

}
class maternalHomePageState extends State<MaternalhomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),


       bottomNavigationBar:  const GNav(
           backgroundColor: Colors.lightGreen,
           color: Colors.white,
           activeColor: Colors.white,
           tabBackgroundColor: Colors.white10,
           gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.medical_information,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.account_balance,
                text: 'Search',
              ),
              GButton(
                icon: Icons.account_balance_outlined,
                text: 'Profile',
              )
            ]
        )

    );
  }
}