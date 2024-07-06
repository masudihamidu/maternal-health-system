import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'NavBar.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  maternalHomePageState createState() => maternalHomePageState();
}

class maternalHomePageState extends State<Questions> {
  final List<Map<String, String>> messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({'sender': 'patient', 'text': _controller.text});
        messages.add({'sender': 'system', 'text': 'Nenda hospitali iliyo karibu 5nawe ukaonane na mtaalamu wa afya.'}); // Mock system response
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isPatient = message['sender'] == 'patient';
                return Align(
                  alignment: isPatient ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: isPatient ? Colors.lightGreen[100] : Colors.blue[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      message['text'] ?? '',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Uliza msaada hapa...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
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
           GButton(
            icon: Icons.home,
            onPressed: (){
              context.go('/MaternalPage');
            },
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
