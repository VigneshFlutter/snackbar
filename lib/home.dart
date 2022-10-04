import 'package:flutter/material.dart';
import 'package:get/get.dart';


class home extends StatelessWidget {  
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('homepage ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('back to screen'),
              onPressed: () 
            {
              Get.back();

              
            }),
            Text(
              "${Get.arguments}",
              style: TextStyle(color: Colors.green,fontSize: 20),

            ),
            
          ],
        ),
      ),
      
    );
    
  }
}