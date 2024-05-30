import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'NavBar.dart';

class MaternalhomePage extends StatefulWidget {
  const MaternalhomePage({Key? key}) : super(key: key);

  @override
  maternalHomePageState createState() => maternalHomePageState();
}

class maternalHomePageState extends State<MaternalhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(7),
          ),
          // const Text("Dashibodi" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          const Padding(
            padding: EdgeInsets.all(7),
          ),

          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                3, // Number of grid items
                    (index) => Container(
                  margin: EdgeInsets.all(8),
                  color: Colors.green,
                  child: Center(
                    child: Text('Taarifa $index'),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.lightGreen,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.white10,
        gap: 9,
        tabs: [
          const GButton(
            icon: Icons.home,
            text: 'Nyumbani',
          ),
           GButton(
            icon: Icons.question_answer,
            onPressed: () {
              context.go('/QuestionAnswers');
            },
            text: 'Msaada',
          ),

          const GButton(
            icon: Icons.edit_note_sharp,
            text: 'Ushauri',
          ),
          GButton(
            icon: Icons.calendar_month,
            onPressed: () {
              context.go('/ClinicCard');
            },
            text: 'Mahudhurio',
          )
        ],
      ),
    );
  }
}
