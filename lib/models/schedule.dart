// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Schedule {
  String date;
  List<String> hour;
  
  Schedule({
    required this.date,
    required this.hour,
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'hour': hour,
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      date: map['date'] as String,
      hour: List<String>.from((map['hour']), 
    ));
  }

  String toJson() => json.encode(toMap());

  factory Schedule.fromJson(String source) => Schedule.fromMap(json.decode(source) as Map<String, dynamic>);
}
