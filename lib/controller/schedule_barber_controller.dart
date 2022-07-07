
import 'package:teste_dartion/repositories/schedules_barber_repository.dart';

class ScheduleBarberController {

  final  _schedulesBarberRepository = SchedulesBarberRepository();
  
  Future<void> finAll() async {
    final schedules = await _schedulesBarberRepository.findAll();

    schedules.forEach((element) => print(element.idBarber));
  }

  Future<void> findById(int id) async {
    
    final barber = await _schedulesBarberRepository.findById(id);

    print(barber);
  }

} 