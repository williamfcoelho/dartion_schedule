// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:teste_dartion/models/schedule.dart';

class ScheduleBarber {
  int id ;
  int idBarber;
  List<Schedule> schedules;

  ScheduleBarber({
    required this.id,
    required this.idBarber,
    required this.schedules,
  });

}
