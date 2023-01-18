import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class AppointmentModel extends Equatable {
  final int id;
  final String name;
  final String image; //or Image in place of string
  final String role;
  final String date;
  final String notes;
  final String fromTime;
  final String toTime;
  final bool isCancelled;
  final bool isComplete;
  final bool isLatest;

  AppointmentModel({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.fromTime,
    required this.toTime,
    required this.role,
    required this.notes,
    required this.isComplete,
    required this.isCancelled,
    required this.isLatest,
  });
  @override
  List<Object?> get props => [
        id,
        name,
        image,
        role,
        notes,
        date,
        fromTime,
        toTime,
        isCancelled,
        isComplete,
        isLatest,
      ];
  static List<AppointmentModel> appointments = [
    AppointmentModel(
      id: 1,
      name: 'Dr. Narayan Gopal',
      image: Assets.images.doctor.path,
      role: 'Cardiologist',
      notes: '1',
      date: 'Sep 29',
      fromTime: '1:00',
      toTime: '2:00',
      isCancelled: true,
      isComplete: false,
      isLatest: false,
    ),
    AppointmentModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      notes: '1',
      date: 'Sep 29',
      fromTime: '1:00',
      toTime: '2:00',
      isCancelled: false,
      isComplete: true,
      isLatest: false,
    ),
    AppointmentModel(
      id: 1,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      notes: '3',
      date: 'Sep 29',
      fromTime: '1:00',
      toTime: '2:00',
      isCancelled: false,
      isComplete: false,
      isLatest: true,
    ),
    AppointmentModel(
      id: 1,
      name: 'Dr. Kale Prashad',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      notes: '3',
      date: 'Sep 29',
      fromTime: '1:00',
      toTime: '2:00',
      isCancelled: false,
      isComplete: false,
      isLatest: false,
    ),
  ];
}
