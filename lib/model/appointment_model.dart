import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class AppointmentModel extends Equatable {
  final int id;
  final String name;
  final String image; //or Image in place of string
  final String date;
  final String time;
  final String message;
  final bool isCurrentUser;

  AppointmentModel({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.time,
    required this.message,
    required this.isCurrentUser,
  });
  @override
  List<Object?> get props =>
      [id, name, image, date, time, message, isCurrentUser];
  static List<AppointmentModel> chats = [
    AppointmentModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      date: '2022',
      time: '1:00 AM',
      message: "Hi!",
      isCurrentUser: true,
    ),
    AppointmentModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      date: '2022',
      time: '2:00 AM',
      message: "Hey How Are You!",
      isCurrentUser: true,
    ),
    AppointmentModel(
      id: 3,
      name: 'Dr. Dipak Bajracharya',
      image: Assets.images.doctor.path,
      date: '2022',
      time: '3:00 AM',
      message: "Hello!",
      isCurrentUser: false,
    ),
  ];
}
