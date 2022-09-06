import 'package:flutter/material.dart';
import 'package:screens/screens/secondscreen.dart';
import 'screens/firstscreen.dart';

void main() {
  runApp( MaterialApp(
    home: const Home(),
    theme: ThemeData(fontFamily: 'RussoOne'),

  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: const Text(
                "Main Screen",
                style: TextStyle(
                    fontSize: 30, color: Colors.black, fontFamily: 'RussoOne'),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const First();
                    }));
                  });
                },
                icon: const Icon(Icons.add),
                label: const Text("first screen")),
           const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Second();
                    }));
                  });
                },
                icon:const Icon(Icons.add),
                label: const Text("second screen"))
          ],
        ),
      ),
    );
  }
}
