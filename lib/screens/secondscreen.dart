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
    return 
       Center(
        child: Column(
          children: [
            const Text(
                "second screen",
                style: TextStyle(fontSize: 30, color: Colors.black,fontFamily: 'Pacifico'  ),
              
            ),
            const SizedBox(height: 20,),
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
                child: const Text("return"))
          ],
        ),
    );
  }
}
