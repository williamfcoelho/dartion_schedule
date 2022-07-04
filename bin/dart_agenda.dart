import 'package:teste_dartion/controller/schedule_barber_controller.dart';

void main() {
  List<String> f = [];
  int minutesInitial = 0;
  var initialHour = 12;
  var finalHour = 14;
  var step = 15;

  f = listHours(
      step: step,
      minutesInitial: minutesInitial,
      initialHour: initialHour,
      finalHour: finalHour);
 // print(f);

// Lista vinda do banco de dados tabela agenda filtrando Barber, data e hora
  List<String> f2 = ['12:15', '12:30'];

  List<String> f3 = differenceFN(f, f2);
//  print(f3);


  ScheduleBarberController().finAll();
 
}



//**********Functions************************************************  

// tranformando a lista em Map para utilizar a função difference
// criando uma lista com a diferença de outros 2 listas f e f2
List<String> differenceFN(List<String> f1, List<String> f2) {
  var set1 = Set.from(f1);
  var set2 = Set.from(f2);
  List<String> lstReturn = List.from(set1.difference(set2));

  return lstReturn;
}

List<String> listHours(
    {required int step,
    required int minutesInitial,
    required int initialHour,
    required int finalHour}) {
  List<String> lstReturn = [];
  String hour = '';
  String minutes = '';

  for (var h = initialHour; h <= finalHour - 1; h++) {
    if (h < 10) {
      hour = '0$h';
    } else {
      hour = h.toString();
    }

    for (minutesInitial; minutesInitial < 60;) {
      if (minutesInitial >= 10) {
        minutes = minutesInitial.toString();
      } else {
        minutes = '0$minutesInitial';
      }
      lstReturn.add('$hour:$minutes');
      minutesInitial = minutesInitial + step;
    }
    minutesInitial = 0;
  }

  return lstReturn;
}




List<String> listHoursDb(
    {required int step,
      required int minutesInitial,
      required int initialHour,
      required int finalHour}) {
  List<String> _lstReturn = [];
  String hour = '';
  String minutes = '';

  for (var h = initialHour; h <= finalHour - 1; h++) {
    if (h < 10) {
      hour = '0$h';
    } else {
      hour = h.toString();
    }

    for (minutesInitial; minutesInitial < 60;) {
      if (minutesInitial >= 10) {
        minutes = minutesInitial.toString();
      } else {
        minutes = '0$minutesInitial';
      }
      _lstReturn.add('$hour:$minutes');
      minutesInitial = minutesInitial + step;
    }
    minutesInitial = 0;
  }

  return _lstReturn;
}

int loopFN(int minuto, int hora) {

  for (var x=0; x <6 ; x++){
    if(x <60){
      minuto = x;
    }else{
      hora +1;
    }
  }
  return hora;
}