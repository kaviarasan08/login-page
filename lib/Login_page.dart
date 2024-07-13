import 'package:flutter/cupertino.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginpage/register_page.dart';

final GlobalKey<FormState> _formkey=GlobalKey<FormState>();

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  bool _isecurepassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:  Center(
            child:  SingleChildScrollView(
              child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage("android/img/unnamed.png"),fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(height: 50,),
                    Text("Welcome back!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 5,),
                    Text("Log in to existing LOGO account",style: TextStyle(color: Colors.black.withOpacity(0.6),),),
                    SizedBox(height: 50,),
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          children: [
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
                                hintText: "Username",
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
                          ],
                        )
                      ),
                    ),


                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 250,),
                        Text("Forgot Password?",style: TextStyle(color: Colors.blue.shade800,),),

                      ],
                    ),
                    SizedBox(height: 30,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 0,padding: EdgeInsets.symmetric(horizontal: 8)),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
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
                            Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                          ]
                      ),),

                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                          children: [
                            Expanded(child: Divider(thickness: 1,color: Colors.grey.withOpacity(0.3),)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text("Or sign up using",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            Expanded(child: Divider(thickness: 1,color: Colors.grey.withOpacity(0.3))),

                          ],
                        ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey.withOpacity(0.1),
                            image: DecorationImage(image: AssetImage("android/img/Facebook-f_Logo-Blue-Logo.wine.png",),fit: BoxFit.cover)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 60,
                            width: 60,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.grey.withOpacity(0.1),
                                image: DecorationImage(image: AssetImage("android/img/Google_Icons-09-512.webp",),fit: BoxFit.cover)
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey.withOpacity(0.1),
                              image: DecorationImage(image: AssetImage("android/img/images1.png",),fit: BoxFit.cover)
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style: TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold,fontSize: 18)),
                        SizedBox(width: 5,),
                        GestureDetector(
                            onTap: (){
                              print("Login Screen");
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>register_page()));
                            },
                            child: Text("Sign Up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),))
                      ],
                    ),







                  ],
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

