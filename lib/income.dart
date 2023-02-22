import 'package:flutter/material.dart';
import 'add.dart';
import 'analysis.dart';
import 'settings.dart';
import 'budget.dart';

class income extends StatelessWidget {
  const income({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Add Expense/Income"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return add();
                  },));
                },child: Text("Expense",style: TextStyle(
                  fontSize: 15.0,color: Colors.black,
                ),)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
                child: TextButton(onPressed: (){},child: Text("Income",style: TextStyle(
                  fontSize: 15.0,color: Colors.black,
                ),)),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0.0,90.0,00.0,0.0),
            child: SizedBox(
              width: 140.0,
              child:

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Income",
                  //  hintText: "enter your  income"
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ElevatedButton(onPressed: (){}, child: Text("save")),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return analysis();
                  },));
                }, child: Text("Log")),

                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return analysis();
                  },));
                }, child: Text("Analysis")),

                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return add();
                  },));
                }, child: Text("Add E/I")),

                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return budget();
                  },));
                }, child: Text("Budget")),

                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return settings();
                  },));
                }, child: Text("Profile")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
