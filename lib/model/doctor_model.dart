import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class DoctorModel extends Equatable {
  final int id;
  final String name;
  final String image; //or Image in place of string
  final String role;
  final String totalRating;

  DoctorModel({
    required this.id,
    required this.name,
    required this.image,
    required this.role,
    required this.totalRating,
  });
  @override
  List<Object?> get props => [id, name, image, role, totalRating];
  static List<DoctorModel> doctors = [
    DoctorModel(
      id: 1,
      name: 'Dr. Nabin K. Bhattrai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      totalRating: '150',
    ),
    DoctorModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      totalRating: '100,',
    ),
    DoctorModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      totalRating: '100,',
    ),
    DoctorModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      totalRating: '100,',
    ),
    DoctorModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      totalRating: '100,',
    ),
    DoctorModel(
      id: 2,
      name: 'Dr. Sabin Rai',
      image: Assets.images.doctor.path,
      role: "Cardiologist",
      totalRating: '100,',
    ),
  ];
}
