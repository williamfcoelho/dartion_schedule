// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Schedule {
  String date;
  String hours;

  Schedule({
    required this.date,
    required this.hours,
  });

  // toMap é um método que pega o objeto (Schedule) e transforma em um Map<String,dynamic>
  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'hours': hours,
    };
  }

  // fromMap é um CONSTRUTOR que vai pegar um MAP e transformar em um objeto Schedule
  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      date: map['date'] ?? 0,
      hours: map['hours'] ?? '',
    );
  }

  // toJson é um método que retorna uma string json do meu abjeto Schedule
  String toJson()=> jsonEncode(toMap());

  // fromJson é um método que baseado em uma string json retorna um objeto Schedule
  factory Schedule.fromJson(String json)=> Schedule.fromMap(jsonDecode(json)) ;
}
