import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class ChatModel extends Equatable {
  final int id;
  final String name;
  final String image; //or Image in place of string
  final String date;
  final String time;
  final String message;

  ChatModel({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.time,
    required this.message,
  });
  @override
  List<Object?> get props => [id, name, image, date, time, message];
  static List<ChatModel> chats = [
    ChatModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      date: '2022',
      time: 'Just Now',
      message: "Hi!",
    ),
    ChatModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      date: '2022',
      time: '2:00 AM',
      message: "Hey How Are You!",
    ),
    ChatModel(
      id: 3,
      name: 'Dr. Dipak Bajracharya',
      image: Assets.images.doctor.path,
      date: '2022',
      time: '3:00 AM',
      message: "Hello!",
    ),
  ];
}
