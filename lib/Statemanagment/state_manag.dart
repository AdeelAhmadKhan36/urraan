import 'package:create_model/Providers/theme_notifier.dart';
import 'package:create_model/Statemanagment/first_screen.dart';
import 'package:create_model/Statemanagment/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Statemanagment extends StatefulWidget {
  const Statemanagment({super.key});

  @override
  State<Statemanagment> createState() => _StatemanagmentState();
}

class _StatemanagmentState extends State<Statemanagment> {
  bool is_dark_theme = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setThemeinitialState();

  }

  void setThemeinitialState() async {
    final prefs = await SharedPreferences.getInstance();
    Provider.of<ThemeNotifier>(context, listen: false)
        .SetThemeStatuse(is_dark_theme);
    prefs.getBool("is_dark_theme") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ThemeNotifier>();

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      // appBar: AppBar(
      //   title: Text('StateManagment'),
      // ),
      drawer: Container(

        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width -100,
        child: InkWell(
            onTap: () {
              is_dark_theme = !is_dark_theme;
              //call the provider
              Provider.of<ThemeNotifier>(context, listen: false)
                  .SetThemeStatuse(is_dark_theme);

              Navigator.of(context).pop();
            },
            child: Icon(Icons.star,size: 90,color: Colors.red,),
          // color: Theme.of(context).iconTheme.color,
          // size: Theme.of(context).iconTheme.size),
        ),



      ),
      body: context.watch<ThemeNotifier>().getScreenStatus
          ? FirstScreen()
          : SecondScreen(),
    );
  }
}
