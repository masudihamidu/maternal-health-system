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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Karibu, [Name]',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  title: const Text('Ukuaji wa ujauzito'),
                  subtitle: const Text('Wiki ya 24: Mtoto wako anaendelea vizuri'),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    // Navigate to pregnancy tracker details
                  },
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  title: const Text('Vidokezo vya Kila Siku na Makala'),
                  subtitle: const Text('Jinsi ya kukabiliana na ugonjwa'),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    // Navigate to articles section
                  },
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  title: const Text('Udhurio lijalo'),
                  subtitle: const Text('Ijayo: Ultrasound 5/6/2024'),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    // Navigate to appointments section
                  },
                ),
              ),

              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  title: const Text('Afya na ushauri'),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    // Navigate to health and fitness section
                  },
                ),
              ),

              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  title: const Text('Huduma ya dharura'),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    // Navigate to emergency contacts
                  },
                ),
              ),
            ],
          ),
        ),
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
