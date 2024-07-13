import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginpage/Login_page.dart';

final _formKey=GlobalKey<FormState>();
class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  bool _isecurepassword=true;
  void submitForm(){

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Center(
              child:  SingleChildScrollView(
                child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            image: DecorationImage(image: AssetImage("android/img/unnamed.png"),fit: BoxFit.cover)
                        ),
                      ),

                      Text("Lets Get Started!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: 5,),
                      Text("Create an account on MNZL to get all features",style: TextStyle(color: Colors.black.withOpacity(0.6),),),
                      SizedBox(height: 20,),
                      Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(children: [
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a username';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                print('Username: $value');
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 25,bottom:25,left: 25,right: 25),
                                prefixIcon:  Icon(Icons.person_2_outlined),
                                hintText: "First Name",
                                hintStyle:TextStyle(color: Colors.grey.withOpacity(0.5)),
                                filled: true,
                                fillColor:Colors.grey.withOpacity(0.2),
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a username';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                print('Username: $value');
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 25,bottom:25,left: 25,right: 25),
                                prefixIcon:  Icon(Icons.person_2_outlined),
                                hintText: "Last Name",
                                hintStyle:TextStyle(color: Colors.grey.withOpacity(0.5)),
                                filled: true,
                                fillColor:Colors.grey.withOpacity(0.2),
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a email';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                print('email: $value');
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 25,bottom:25,left: 25,right: 25),
                                prefixIcon:  Icon(Icons.mail_outlined),
                                hintText: "Email",
                                hintStyle:TextStyle(color: Colors.grey.withOpacity(0.5)),
                                filled: true,
                                fillColor:Colors.grey.withOpacity(0.2),
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                print('Password: $value');
                              },
                              obscureText: _isecurepassword,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 25,bottom:25,left: 25,right: 25),
                                prefixIcon:  Icon(CupertinoIcons.lock),
                                hintText: "Password",
                                hintStyle:TextStyle(color: Colors.grey.withOpacity(0.5)),
                                filled: true,
                                suffixIcon: togglepassword(),
                                fillColor:Colors.grey.withOpacity(0.2),
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm a password';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                print('Password: $value');
                              },
                              obscureText: _isecurepassword,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 25,bottom:25,left: 25,right: 25),
                                prefixIcon:  Icon(CupertinoIcons.lock),
                                hintText: "Confirm Password",
                                hintStyle:TextStyle(color: Colors.grey.withOpacity(0.5)),
                                suffixIcon: togglepassword(),
                                filled: true,
                                fillColor:Colors.grey.withOpacity(0.2),
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ],)
                        ),
                      ),
                      SizedBox(height: 30,),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 0,padding: EdgeInsets.symmetric(horizontal: 8)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                          }
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
                            Text("Create",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                          ]
                      ),),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",style: TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold,fontSize: 18)),
                          SizedBox(width: 5,),
                          GestureDetector(
                              onTap: (){
                                print("Login Screen");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_page()));
                              },
                              child: Text("Login here",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),))
                        ],
                      ),


                    ],

                ),
              ),
            ),
        ),
        

    );
  }

  Widget togglepassword(){
    return IconButton(
        onPressed: (){
          setState(() {
            _isecurepassword=! _isecurepassword;
          });
        }, icon: _isecurepassword ? Icon(Icons.visibility_outlined):Icon(Icons.visibility_off_outlined));
  }
}





