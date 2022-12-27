import 'package:doctor/imports.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String icon; //or Image in place of string

  Category({
    required this.id,
    required this.name,
    required this.icon,
  });
  @override
  List<Object?> get props => [id, name, icon];
  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Consultation',
      icon: Assets.icons.doctor.path,
    ),
    Category(
      id: 2,
      name: 'Medicine',
      icon: Assets.icons.medicine.path,
    ),
    Category(
      id: 3,
      name: 'Ambulance',
      icon: Assets.icons.ambulance.path,
    ),
    Category(
      id: 4,
      name: 'Prescription',
      icon: Assets.icons.priscription.path,
    ),
  ];
}
