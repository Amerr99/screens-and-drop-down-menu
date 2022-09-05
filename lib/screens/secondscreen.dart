import 'package:flutter/material.dart';
import 'package:screens/main.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            const Text(
                "second screen",
                style: TextStyle(fontSize: 30, color: Colors.black ),
              
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                  });
                },
                child: Text("return"))
          ],
        ),
      ),
    );
  }
}
