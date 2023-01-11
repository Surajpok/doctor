import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class ChatDetailsModel extends Equatable {
  final int id;
  final String name;
  final String image; //or Image in place of string
  final String date;
  final String time;
  final String message;
  final String messageType;

  ChatDetailsModel({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.time,
    required this.message,
    required this.messageType,
  });
  @override
  List<Object?> get props =>
      [id, name, image, date, time, message, messageType];
  static List<ChatDetailsModel> messages = [
    ChatDetailsModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      date: '2022',
      time: 'Just Now',
      message: "Hi!",
      messageType: "receiver",
    ),
    ChatDetailsModel(
        id: 2,
        name: 'Dr. Sabin Rai',
        image: Assets.images.doctor.path,
        date: '2022',
        time: '2:00 AM',
        message: "Hey How Are You!",
        messageType: "sender"),
    ChatDetailsModel(
        id: 3,
        name: 'Dr. Dipak Bajracharya',
        image: Assets.images.doctor.path,
        date: '2022',
        time: '3:00 AM',
        message: "I'm good. What about you?",
        messageType: "receiver"),
    ChatDetailsModel(
        id: 3,
        name: 'Dr. Dipak Bajracharya',
        image: Assets.images.doctor.path,
        date: '2022',
        time: '3:00 AM',
        message: "I'm good too my friend",
        messageType: "sender"),
  ];
}
