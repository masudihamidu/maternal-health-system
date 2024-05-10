import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class NavBar extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 10);

  const NavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
        color: Colors.transparent, // selected tab background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 40), // Add padding to the bottom
              child: Text(
                'Menyu', // Add the menu title here
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
              },
              child: buildMenuItem(
                text: 'Nyumbani',
                icon: Icons.home,
              ),
            ),


            GestureDetector(
              onTap: (){
              },
              child: buildMenuItem(
                text: 'Chanjo',
                icon: Icons.medical_information,
              ),
            ),

            GestureDetector(
              onTap: (){
              },
              child: buildMenuItem(
                text: 'Ushauri',
                icon: Icons.edit_note_sharp,
              ),
            ),

            GestureDetector(
              onTap: (){
                context.go('/ClinicCard');

              },
              child: buildMenuItem(
                text: 'Mahudhurio',
                icon: Icons.calendar_month,
              ),
            ),

            const Spacer(),
            // Push the "Close" button to the bottom
            ElevatedButton(

              onPressed: () {
                Navigator.pop(context); // Close the drawer
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Transparent button background
                elevation: 0, // No elevation
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Funga', style: TextStyle(color: Colors.black),
                    ),

                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),

                      child: Icon(
                        Icons.close,
                        // size: 32,
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    const color = Colors.black;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
    );
  }
}
