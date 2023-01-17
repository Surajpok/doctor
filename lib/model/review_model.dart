import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class ReviewModel extends Equatable {
  final int id;
  final String name;
  final String image; //or Image in place of string
  final String date;
  final String review;
  final String rating;
  final String totalRating;

  ReviewModel({
    required this.id,
    required this.name,
    required this.image,
    required this.date,
    required this.review,
    required this.rating,
    required this.totalRating,
  });
  @override
  List<Object?> get props =>
      [id, name, image, date, review, rating, totalRating];
  static List<ReviewModel> reviews = [
    ReviewModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      date: 'Today',
      review:
          "Many many thanks to Dr. Pramod Kharel. He is the best doctor. I highly recommend him.",
      rating: '4.9+',
      totalRating: '150',
    ),
    ReviewModel(
      id: 1,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      date: 'Yesterday',
      review:
          "Many many thanks to Dr. Pramod Kharel. He is the best doctor. I highly recommend him.",
      rating: '4.5+',
      totalRating: '120',
    ),
  ];
}
