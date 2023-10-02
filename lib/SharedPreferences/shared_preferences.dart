import 'package:flutter/material.dart';

import '../ThemeData/text_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Shared Preferences',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            InkWell(
              onTap:() async
          {
            final prefs= await SharedPreferences.getInstance();
            // await prefs.setInt('counter', 10);
            // await prefs.setBool('Is_Update', true);
            await prefs.setStringList('list',['Fist','Second']);
          },

              child: Container(
                height: 50,
              width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green
                  ),

                  child: Center(child: Text("Press to Save Value",style: TextStyle(color: Colors.white),))),
            ),
            SizedBox(height: 20,),
            InkWell(


              onTap: ()async{
                final prefs= await SharedPreferences.getInstance();
                // final int counter=prefs.getInt('counter')??20;
                final bool Is_Update=prefs.getBool('Is_Update')??false;
                
                print('Object ${Is_Update}');

              },

              child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(child: Text("Press to get Value",style: TextStyle(color: Colors.white))),
              ),
            )],
        ),
      ),
    );
  }
}
