
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';
class Postapi extends StatefulWidget {
  const Postapi({super.key});

  @override
  State<Postapi> createState() => _PostapiState();
}

class _PostapiState extends State<Postapi> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  void login(String email , password) async {

    try{

      Response response = await post(
          Uri.parse('https://reqres.in/api/register'),
          body: {
            'email' : email,
            'password' : password
          }
      );

      if(response.statusCode == 200){

        print('SignUp successfully');

      }else {
        print('failed');
      }
    }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:  [
                 TextField(
                   decoration: InputDecoration(
                     hintText: 'Enter Email Here'
                   ),
                 ),
                            SizedBox(height: 20,),
                 TextField(
                   decoration: InputDecoration(
                       hintText: 'Enter Password Here'
                   ),
                 ),
                 SizedBox(height: 20,),

                 GestureDetector(
                   onTap:(){
                     login(emailcontroller.text.toString(),passwordcontroller.text.toString());
                   },
                   child: Container(
                     height: 50,

                     decoration: BoxDecoration(
                       color: Colors.green,
                       borderRadius: BorderRadius.circular(20)
                     ),
                     child: Center(child: Text('SignUp')),
                   ),
                 )
               ],

        ),
      ),

    );
  }
}
