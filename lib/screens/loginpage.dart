import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _emailcomtoelr=TextEditingController();
  TextEditingController _passwordcontroler= TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var Emailformate=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'WhatsaAppShop',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(

                      validator: (value){
                        if(Emailformate.hasMatch(value.toString())){
                          return null;
                        }else{
                          return 'Enter valide email';
                        }
                      },
                      controller: _emailcomtoelr,
                      decoration: InputDecoration(
                          hintText: 'Enter Email/Mobile Number',
                          fillColor: Colors.grey[400],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(obscureText: true,
                      controller: _passwordcontroler,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.black26,),
                          hintText: 'Enter Password',
                          fillColor: Colors.grey[400],
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),
                    child: TextButton(child: Text('Sign in',style: TextStyle(color: Colors.white),),onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                      }
                      // final bool isValid = EmailValidator.validate(_emailcomtoelr.text);
                      //
                      // isValid?Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),)):Fluttertoast.showToast(msg: 'enetr currect email');


                    }),
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.topRight,child: Text('Forgot Password',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 12),)),
                 SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont Have an Account?',style: TextStyle(color: Colors.grey),),
                      Text('REGISTER',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
