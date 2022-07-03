void main() {
  int weight = 50;
  int hour = 11;
  int minute = 45;
  int step = 5;

  String hours =
      finalHourMinute(weight: weight, hour: hour, minute: minute, step: step);

  print(hours);
}

String finalHourMinute(
    {required int weight,
    required int hour,
    required int minute,
    required int step}) {
  String totalHours = '00:00';
  int finalMinute;
  int finalHour;

  for (var i = 0; i < weight; i++) {
    if (minute >= (60 - step)) {
      minute = 0;
      hour++;
    } else {
      minute += step;
    }
  }

  if (minute == 60) {
    minute = 45;
  }
  finalMinute = minute;
  finalHour = hour;

  if (finalMinute == 0) {
    totalHours = '$finalHour:0$finalMinute';
  } else {
    totalHours = '$finalHour:$finalMinute';
  }
  return totalHours;
}
