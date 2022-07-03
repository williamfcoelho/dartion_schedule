
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:teste_dartion/models/schedule_barber.dart';

class SchedulesBarberRepository {
  Future <List<ScheduleBarber>> findAll() async{
    
    final scheduleBarberResponse = await http.get(Uri.parse('http://localhost:3031/schedule_barber'));

    final scheduleList = jsonDecode(scheduleBarberResponse.body);

    return scheduleList.map<ScheduleBarber>((scheduleMap){
      return ScheduleBarber.fromMap(scheduleMap);
    }).toList();
     
  }
}