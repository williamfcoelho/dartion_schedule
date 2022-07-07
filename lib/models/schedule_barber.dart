// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:teste_dartion/models/schedule.dart';

class ScheduleBarber {
  String id;
  int idBarber;
  List<Schedule> schedules;

  ScheduleBarber({
    required this.id,
    required this.idBarber,
    required this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idBarber': idBarber,
      'schedules': schedules.map((x) => x.toMap()).toList(),
    };
  }

  factory ScheduleBarber.fromMap(Map<String, dynamic> map) {
    return ScheduleBarber(
      id: map['id'] as String,
      idBarber: map['idBarber'] as int,
      schedules: List<Schedule>.from(
        (map['schedules']).map<Schedule>(
          (x) => Schedule.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ScheduleBarber.fromJson(String source) =>
      ScheduleBarber.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ScheduleBarber(id: $id, idBarber: $idBarber, schedules: $schedules)';
}
