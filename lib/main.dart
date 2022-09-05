import 'package:flutter/material.dart';
import 'package:screens/screens/secondscreen.dart';
import 'screens/firstscreen.dart';
void main() {
  runApp(const MaterialApp(home: Home(),));
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
          children:  [
            Container(
              margin: EdgeInsets.all(20),
              child:
            Text("Main Screen",style: TextStyle(fontSize: 30,color: Colors.black),),),
            ElevatedButton.icon(
              
              onPressed: 
              () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return First();
                  })
                );});
              }
            , icon: Icon(Icons.add), label: Text("first screen")),
            SizedBox(height: 20,),
            
            ElevatedButton.icon(onPressed: 
              () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Second();
                  })
                );});
              }
            , icon: Icon(Icons.add), label: Text("second screen"))
          ],
        ),
      ),



    );
  }
}