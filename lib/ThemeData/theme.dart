import 'package:create_model/Providers/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themework extends StatefulWidget {
  const Themework({super.key});

  @override
  State<Themework> createState() => _ThemeworkState();
}

class _ThemeworkState extends State<Themework> {
  bool is_dark_theme=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  void setThemeinitialState() async{
    final prefs= await SharedPreferences.getInstance();
    Provider.of<ThemeNotifier>(context,listen:false).
    SetThemeStatuse(is_dark_theme);
    prefs.getBool("is_dark_theme")??false;
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ThemeNotifier>();

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Application Themwork'),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            'Flutter Theme',
            style: Theme.of(context).textTheme.headline1,
          ),
            
          ),
          InkWell(
            onTap: (){
              is_dark_theme=!is_dark_theme;
              //call the provider
              Provider.of<ThemeNotifier>(context,listen:false).
              SetThemeStatuse(is_dark_theme);

            },

            child: Icon(Icons.star,
            color: Theme.of(context).iconTheme.color,
            size: Theme.of(context).iconTheme.size
            ),
          ),

        ],
      ),
    );
  }
}
