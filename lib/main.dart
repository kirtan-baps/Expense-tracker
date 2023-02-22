import 'package:flutter/material.dart';
import 'add.dart';
import 'settings.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'analysis.dart';
import 'log.dart';
import 'budget.dart';



void main() {

  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expense Tracker"),
        backgroundColor: Colors.black,

      ),
      body: Column(
        children: [
          Text("No log's have been created yet",textAlign: TextAlign.center,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
                child:
                Center(
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return log();
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

