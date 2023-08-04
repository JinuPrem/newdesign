import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            cntnrwdgt(Colors.deepPurple, 'DeepPurple'),
            cntnrwdgt(Colors.deepPurpleAccent,'DeepPurpleAccent'),
            cntnrwdgt(Colors.purple, 'Purple'),
            cntnrwdgt(Colors.purpleAccent, 'PurpleAccent'),
            cntnrwdgt(Colors.cyan, 'cyan'),
            cntnrwdgt(Colors.cyanAccent, 'CyanAccent'),
            cntnrwdgt(Colors.lightBlue, 'LightBlue'),
           cntnrwdgt(Colors.lightBlueAccent, 'LightBlueAccent')
          ],
        ),
      ),
    );
  }

  Expanded cntnrwdgt(Color clrcntr,String cntrtext) {
    return Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: clrcntr,
              child: Center(
                child: Text(
                  cntrtext,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
  }
}
