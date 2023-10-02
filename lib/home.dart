import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Photo> photolist=[];


  Future<List<Photo>> getPhotos() async{

    final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      photolist.clear();
      for(Map i in data){
        photolist.add(Photo(title: i['title'] ,url: i['title']));

      }
      return photolist;

    }else{
      return photolist;

    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Model'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPhotos(),
                builder:(context,AsyncSnapshot<List<Photo>>snapshot){
              return ListView.builder(
                itemCount: photolist.length,
                  itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data![index].url.toString()),
                  ),
                  title: Text(snapshot.data![index].title.toString()),
                );
              });
            }),
          )
        ],
      ),
    );
  }
}

class Photo{
  String title,url;

  Photo({required this.title,required this.url});

}