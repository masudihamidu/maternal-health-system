import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:maternal_health_system/screens/NavBar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ClinicCard extends StatefulWidget{
  const ClinicCard({super.key});
  @override
  maternalHomePageState createState() => maternalHomePageState();

}
class maternalHomePageState extends State<ClinicCard>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
        ),

        body: Center(
            child: Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),

                    series: <LineSeries<ClinicData, String>>[
                      LineSeries<ClinicData, String>(
                        // Bind data source
                          dataSource:  <ClinicData>[
                            ClinicData('Jan', 1),
                            ClinicData('Feb', 10),
                            ClinicData('Mar', 34),
                            ClinicData('Apr', 32),
                            ClinicData('May', 40),
                            ClinicData('Jun', 48),
                            ClinicData('Jul', 50),
                            ClinicData('Aug', 37),
                            ClinicData('Sept', 55),
                            ClinicData('Oct', 61),

                          ],
                          xValueMapper: (ClinicData attendance, _) => attendance.month,
                          yValueMapper: (ClinicData attendance, _) => attendance.week,
                          color: Colors.lightGreen,

                      )
                    ]
                )
            )
        ),

        bottomNavigationBar:  GNav(
            backgroundColor: Colors.lightGreen,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.white10,
            gap: 9,
            tabs: [
              GButton(
                onPressed: (){
                  context.go('/MaternalPage');
                },
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
              GButton(
                icon: Icons.edit_note_sharp,
                text: 'Ushauri',
              ),
              GButton(
                icon: Icons.calendar_month,
                text: 'Mahudhurio',
              )
            ]
        )

    );
  }
}

class ClinicData {
  ClinicData(this.month, this.week);
  final String month;
  final week ;
}