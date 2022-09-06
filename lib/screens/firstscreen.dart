import 'package:flutter/material.dart';
import 'package:screens/main.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

List myStuff = ["laptop", "phone", "wallet", "watch"];
String mySelected = "phone";

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body :
       Center(
         child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text(
                "this is my first screen",
                style: TextStyle(fontSize: 30,fontFamily: 'AmaticSC'),
              ),
            ),
           const SizedBox(
              height: 20,
            ),
           const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ));
                  });
                },
                child: const Text("return")),
                const SizedBox(height: 20,),
            DropdownButton(
              value: mySelected,
              items: myStuff
                  .map((e) => DropdownMenuItem(value: e, child: Text("${e}")))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  mySelected = val.toString();
                });
              },
            )
          ],
      ),
       ),
    );
  }
}
