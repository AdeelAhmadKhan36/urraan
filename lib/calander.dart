import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Calander extends StatefulWidget {
  @override
  _CalanderState createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  List<dynamic> prayerTimes = [];

  Future<void> fetchPrayerTimes() async {
    const url ='https://api.aladhan.com/v1/calendarByCity/2017/4?city=Abbottabad&country=Pakistan&method=1';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        prayerTimes = data['data'];
      });
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPrayerTimes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayer Times'),
      ),
      body: ListView.builder(
        itemCount: prayerTimes.length,
        itemBuilder: (context, index) {
          final prayerTime = prayerTimes[index];

          return Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent
              ),
              height:200,
              child: Column(
                children: [
                  Text(prayerTime['date']['gregorian']['date']),
                  SizedBox(height: 20,),
                  Text('Fajr: ${prayerTime['timings']['Fajr']}'),
                   Text('Sunrise:${prayerTime['timings']['Sunrise']}'),
                  Text('Asr: ${prayerTime['timings']['Asr']}'),
                  Text('Sunset: ${prayerTime['timings']['Sunset']}'),
                  Text('Maghrib: ${prayerTime['timings']['Maghrib']}'),
                  Text('Isha: ${prayerTime['timings']['Isha']}'),
                  Text('Imsak: ${prayerTime['timings']['Imsak']}'),
                  Text('Midnight: ${prayerTime['timings']['Midnight']}'),
                  Text('Firstthird: ${prayerTime['timings']['Firstthird']}'),
                  Text('Lastthird: ${prayerTime['timings']['Lastthird']}'),


                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


