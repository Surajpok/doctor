import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class AppointmentModel extends Equatable {
  final int id;
  final String name;
  final String image; //or Image in place of string
  final String role;
  final String date;
  final String fromTime;
  final String toTime;
  final bool isCancelled;

  AppointmentModel({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.fromTime,
    required this.toTime,
    required this.isCancelled,
    required this.role,
  });
  @override
  List<Object?> get props =>
      [id, name, image, role, date, fromTime, toTime, isCancelled];
  static List<AppointmentModel> appointments = [
    AppointmentModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      date: 'Mon, Sep 29',
      fromTime: '1:00',
      toTime: '2:00',
      isCancelled: true,
    ),
    AppointmentModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      date: 'Mon, Sep 29',
      fromTime: '1:00',
      toTime: '2:00',
      isCancelled: false,
    ),
  ];
}
