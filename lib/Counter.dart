
import 'package:flutter/material.dart';

class Counter_num extends StatefulWidget {
  const Counter_num({super.key});

  @override
  State<Counter_num> createState() => _Counter_numState();
}

class _Counter_numState extends State<Counter_num> {
int counter = 0;
addValue(){
  setState(() {
    counter++;
  });
}
decreaseValue(){
  setState(() {
    counter--;
  });
  
}



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("My First App") ,
      ),
      body:Center(
        child: Container(

          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [  Text("$counter",
             style: TextStyle(fontSize: 40,
             color: Colors.green),
          ),
          ElevatedButton(onPressed: (){addValue();}, child: Text("Add Button")),
          SizedBox(height:25 ,),
          ElevatedButton(onPressed: (){decreaseValue();}, child: Text("Decrease Value"))
          
          
          ],
          ),
        ),
      )
      
    );
  }
}