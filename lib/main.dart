import 'package:flutter/material.dart';
import 'package:loginpage/Login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      darkTheme: ThemeData.dark(),
    );
  }
}
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      decoration: BoxDecoration(

        image:DecorationImage(
          image:NetworkImage("https://img.freepik.com/premium-photo/blue-yellow-wave-abstract-3d-background-generative-ai_1645-2408.jpg?w=996"),
          fit: BoxFit.cover,),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 700,),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 0)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_page()));
                  },
                  child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height:63,
                          width: 200,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [Colors.blue,Colors.black],
                                begin:AlignmentDirectional.topStart,
                                end: AlignmentDirectional.bottomEnd
                            ),
                          ),
                        ),
                        Text("Start",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                      ]
                  ),
                  ),
              ),


            ],
          ),
        ),

      ),
    );
  }
}







