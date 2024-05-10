import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:maternal_health_system/screens/NavBar.dart';

class MaternalhomePage extends StatefulWidget{
  const MaternalhomePage({super.key});
  @override
  maternalHomePageState createState() => maternalHomePageState();

}
class maternalHomePageState extends State<MaternalhomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),

       bottomNavigationBar:   GNav(
           backgroundColor: Colors.lightGreen,
           color: Colors.white,
           activeColor: Colors.white,
           tabBackgroundColor: Colors.white10,
           gap: 9,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Nyumbani',
              ),
              GButton(
                icon: Icons.medical_information,
                text: 'Chanjo',
              ),
              GButton(
                icon: Icons.edit_note_sharp,
                text: 'Ushauri',
              ),
              GButton(
                icon: Icons.calendar_month,
                onPressed: (){
                  context.go('/ClinicCard');
                },
                text: 'Mahudhurio',
              )
            ]
        )

    );
  }
}