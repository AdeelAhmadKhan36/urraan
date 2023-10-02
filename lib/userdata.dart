
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/UserModel.dart';


class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List<UserModel> usermodel=[];
  Future<List<UserModel>> getPost() async{
    final responce=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data=jsonDecode(responce.body.toString());


    if(responce.statusCode==200){
      for(Map i in data){
        usermodel.add(UserModel.fromJson(i));
      }

      return usermodel;
    }

    else{
      return usermodel;


    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Nested Object in Array'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPost(),

                builder: (context, AsyncSnapshot<List<UserModel>> snapshot){

                  if(!snapshot.hasData){
                    return CircularProgressIndicator();

                  }else {
                    return ListView.builder(
                        itemCount: usermodel.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                //Display data Here
                                Reuseable(title: 'Name', value: snapshot.data![index].name.toString()),
                                Reuseable(title: 'Email', value: snapshot.data![index].email.toString()),
                                Reuseable(title: 'id', value: snapshot.data![index].id.toString()),
                                Reuseable(title: 'Username', value: snapshot.data![index].username.toString())

                              ],
                            ),
                          );
                        });
                  }
                }

            ),
          ),

        ],
      ),
    );
  }
}

class Reuseable extends StatelessWidget {
  String title,value;

  Reuseable({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),


        ],
      ),
    );
  }
}
