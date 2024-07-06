import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:maternal_health_system/screens/NavBar.dart';
import 'package:pdf/pdf.dart'; // Correct import for PdfPageFormat
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ClinicCard extends StatefulWidget {
  const ClinicCard({super.key});
  @override
  maternalHomePageState createState() => maternalHomePageState();
}

class maternalHomePageState extends State<ClinicCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child:    Text(
                        'Vipimo/Maoni ya Kufanywa kwa Kila Hudhurio',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Table(
                  border: TableBorder.all(),
                  columnWidths: const {
                    0: FixedColumnWidth(120.0),
                    1: FlexColumnWidth(),
                    2: FlexColumnWidth(),
                    3: FlexColumnWidth(),
                    4: FlexColumnWidth(),
                    5: FlexColumnWidth(),
                    6: FlexColumnWidth(),
                    7: FlexColumnWidth(),
                  },
                  children: const [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(
                            child: Text(
                              'VIPIMO/MAELEZO KUHUSU',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Wiki 12',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Wiki 20',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Wiki 26',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Wiki 30',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Wiki 36',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Wiki 38',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Text(
                              'Wiki 40',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(child: Center(child: Text('blood group'))),
                        TableCell(child: Center(child: Icon(Icons.check, color: Colors.black))),
                        TableCell(child: Center(child: Icon(Icons.check, color: Colors.black))),
                        TableCell(child: SizedBox.shrink()),
                        TableCell(child: SizedBox.shrink()),
                        TableCell(child: SizedBox.shrink()),
                        TableCell(child: SizedBox.shrink()),
                        TableCell(child: SizedBox.shrink()),
                      ],
                    ),
                    // Add more TableRow widgets here to match the data from the screenshot
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kingamwili',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Table(
                      border: TableBorder.all(),
                      columnWidths: const {
                        0: FixedColumnWidth(120.0),
                        1: FlexColumnWidth(),
                        2: FlexColumnWidth(),
                        3: FlexColumnWidth(),
                        4: FlexColumnWidth(),
                        5: FlexColumnWidth(),
                        6: FlexColumnWidth(),
                        7: FlexColumnWidth(),
                      },
                      children: const [
                        TableRow(
                          children: [
                            TableCell(
                              child: Center(
                                child: Text(
                                  'MAELEZO YA KINGAMWILI',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  'Wiki 12',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  'Wiki 20',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  'Wiki 26',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  'Wiki 30',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  'Wiki 36',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  'Wiki 38',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  'Wiki 40',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(child: Center(child: Text('Tetanus'))),
                            TableCell(child: Center(child: Icon(Icons.check, color: Colors.black))),
                            TableCell(child: SizedBox.shrink()),
                            TableCell(child: SizedBox.shrink()),
                            TableCell(child: SizedBox.shrink()),
                            TableCell(child: SizedBox.shrink()),
                            TableCell(child: SizedBox.shrink()),
                            TableCell(child: SizedBox.shrink()),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kipimo cha HIV kwa mtu ambaye hana maambukizi hufanywa kati ya wiki 32 na 36.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Picha za Ultrasound',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Image.asset('assets/images/ultrasound1.png'),
                    SizedBox(height: 8),
                    Image.asset('assets/images/ultrasound2.png'),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _createPdf,
                      child: Text('Pakua PDF'),
                    ),
                  ],
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
          GButton(
            onPressed: () {
              context.go('/MaternalPage');
            },
            icon: Icons.home,
            text: 'Nyumbani',
          ),
          GButton(
            onPressed: () {
              context.go('/QuestionAnswers');
            },
            icon: Icons.question_answer,
            text: 'Msaada',
          ),
          const GButton(
            icon: Icons.edit_note_sharp,
            text: 'Ushauri',
          ),
          GButton(
            icon: Icons.calendar_month,
            text: 'Mahudhurio',
          ),
        ],
      ),
    );
  }

  void _createPdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('Vipimo/Maoni ya Kufanywa kwa Kila Hudhurio',
                  style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 8),
              pw.Text(
                  'Jedwali hili linapaswa kutumika kukumbusha mtoa huduma za afya na mama mjamzito ni vipimo gani vinapaswa kufanywa na wakati gani wa ujauzito.',
                  style: pw.TextStyle(fontSize: 16, fontStyle: pw.FontStyle.italic)),
              pw.SizedBox(height: 8),
              pw.Text('Hudhurio la Kliniki kwa Agra Mapunda.',
                  style: pw.TextStyle(fontSize: 16, fontStyle: pw.FontStyle.italic)),
              pw.SizedBox(height: 16),
              pw.Table.fromTextArray(data: const <List<String>>[
                <String>[
                  'VIPIMO/MAELEZO KUHUSU',
                  'Wiki 12',
                  'Wiki 20',
                  'Wiki 26',
                  'Wiki 30',
                  'Wiki 36',
                  'Wiki 38',
                  'Wiki 40'
                ],
                <String>[
                  'blood group',
                  '✓',
                  '✓',
                  '',
                  '',
                  '',
                  '',
                  '',
                ],
                // Add more rows here to match the data from the screenshot
              ]),
              pw.SizedBox(height: 16),
              pw.Text('Kingamwili', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 8),
              pw.Table.fromTextArray(data: const <List<String>>[
                <String>[
                  'MAELEZO YA KINGAMWILI',
                  'Wiki 12',
                  'Wiki 20',
                  'Wiki 26',
                  'Wiki 30',
                  'Wiki 36',
                  'Wiki 38',
                  'Wiki 40'
                ],
                <String>[
                  'Tetanus',
                  '✓',
                  '',
                  '',
                  '',
                  '',
                  '',
                  '',
                ],
              ]),
            ],
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}

class ClinicData {
  ClinicData(this.month, this.week);
  final String month;
  final int week;
}
