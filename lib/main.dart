import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'snackbar',
      home: Scaffold(
        appBar: AppBar(
          title:Text('snackbar') ,),
          body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('home'),
                  onPressed: () {

                    Get.to(
                      home(),arguments: "data from main"
                      );

                  }

                ),
                 
                RaisedButton(
                  child: Text('bottom sheet theme'),
                  onPressed: () {
                    Get.bottomSheet(
                     Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading:Icon(Icons.wb_sunny_outlined) ,
                            title: Text('Light Theme'),
                            onTap: () => {Get.changeTheme(ThemeData.light())},
                          ),
                          ListTile(

                            leading: Icon(Icons.wb_sunny),
                            title: Text('dark theme'),
                            onTap: () => {Get.changeTheme(ThemeData.dark())},

                          ),
                          


                        ],
                      ),
                     ),
                    
                     barrierColor: Colors.greenAccent.shade100,
                     backgroundColor: Colors.purpleAccent,
                    );
                  }
                  ),
                RaisedButton(
                  child: Text('show dialog box'),
                  onPressed: () {
                    Get.defaultDialog(

                  title: 'dailog title',
                  titleStyle: TextStyle(fontSize: 20),
                  backgroundColor: Colors.purple,
                  // radius: 10,
                  textCancel: 'cancel',
                  cancelTextColor: Colors.white,
                  onCancel: () {},

                  onConfirm: () {},
                  buttonColor: Colors.green,


              
                    );
                  
                }),
                RaisedButton(
                  child: Text('show snackbar'),
                  onPressed: () {
                    Get.snackbar("snacks bar tittile",
                    "hai hello",
                   snackPosition: SnackPosition.BOTTOM,
                   colorText: Colors.orange,
                  //  backgroundColor: Colors.black,
                   margin: EdgeInsets.all(10),
                   animationDuration: Duration(milliseconds: 3000),
                   backgroundGradient:LinearGradient(
                   colors:[Colors.amber,Colors.blue]),


                    borderColor: Colors.yellow,
                    borderWidth: 1,

                    // boxShadows: [
                    //   BoxShadow(
                    //     color:Colors.yellow,
                    //     offset: Offset(30,50),
                    //     spreadRadius: 20,
                    //     blurRadius: 8
                    //   )
                    // ],
                    

                
                  //  maxWidth: 100,

                  //  borderRadius: 10,
                   
                    );
                })
              ],
            ),
          )
      ),
    );
  }
}