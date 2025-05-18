import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(
    MyApp(),
  );
}


void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 100.0,
                    //backgroundImage: NetworkImage("https://www.dpreview.com/files/p/articles/7952219469/google-imagen-lead-image.jpeg"),
                    backgroundImage: AssetImage("images/myBird.jpg")
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                Text(
                  "Agela Yu",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                  Text(
                    "developper mobile",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'sourcefont',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 4.0,
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                    width: 70.0,
                    child: Divider(color: Colors.teal.shade100,),
                  ),

                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.teal,
                            size:30 ,
                          ),
                          Text("0767071914",
                          style: TextStyle(
                            fontFamily: "sourcefont",
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 20.0,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),

                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                        size:30 ,
                      ),
                      title: Text("email : guearthur@gmail.com",
                        style: TextStyle(
                          fontFamily: "sourcefont",
                          fontSize: 15.0,
                          color: Colors.teal.shade900,
                        ),),
                    )
                  ),


              ],
              ),
            )
        ),
      ),
    );
  }
}

