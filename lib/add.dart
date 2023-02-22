import 'package:et/log.dart';
import 'package:flutter/material.dart';
import 'income.dart';
import 'analysis.dart';
import 'budget.dart';
import 'settings.dart';

class add extends StatelessWidget {
   add({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();
  TextEditingController txtController = new TextEditingController();

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
                child: TextButton(onPressed: (){},child: Text("Expense",style: TextStyle(
                  fontSize: 15.0,color: Colors.black,
                ),)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
                    return income();
                  }, ));
                },child: Text("Income",style: TextStyle(
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

              Form(
                key: formGlobalKey,
                child: TextFormField(
                  controller: txtController,
                  validator: (value) {
                    if(value == null){
                      return "Please enter some details";
                    }else
                      {
                        return null;
                      }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter expense",
                    // hintText: "enter your  income"
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ElevatedButton(onPressed: (){
              if (formGlobalKey.currentState!.validate()) {
                formGlobalKey.currentState!.save();
                // use the email provided here
              }
            }, child: Text("save")),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Row(
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
                  Navigator.pushReplacement
                    (context, MaterialPageRoute(builder: (context){
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