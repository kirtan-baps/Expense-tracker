import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Profile of user"),
        backgroundColor: Colors.black,

      ),
      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(90, 90, 90, 0),
        child: Column(
          children: [
            TextField( decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter name",),),
            TextField( decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter age",),),
            TextField( decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter Gender",),),
            TextField( decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter curerncy",
              hintText: "which currency would you like to set as default"
            ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ElevatedButton(onPressed: (){


              }, child: Text("save")),
            ),
          ],
        ),
      )
      ,
    );
  }
}
