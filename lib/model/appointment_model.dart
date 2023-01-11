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
  final String message;
  final bool isCurrentUser;

  AppointmentModel({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.fromTime,
    required this.toTime,
    required this.message,
    required this.isCurrentUser,
    required this.role,
  });
  @override
  List<Object?> get props =>
      [id, name, image, role, date, fromTime, toTime, message, isCurrentUser];
  static List<AppointmentModel> appointments = [
    AppointmentModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      date: '2022',
      fromTime: '1:00',
      toTime: '2:00',
      message: "Hi!",
      isCurrentUser: true,
    ),
    AppointmentModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      role: "Dentist",
      date: '2022',
      fromTime: '1:00',
      toTime: '2:00',
      message: "Hey How Are You!",
      isCurrentUser: true,
    ),
    AppointmentModel(
      id: 3,
      name: 'Dr. Dipak Bajracharya',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      date: '2022',
      fromTime: '1:00',
      toTime: '2:00',
      message: "Hello!",
      isCurrentUser: false,
    ),
  ];
}
