import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? id;
  final String? name;
  final String? email;
  final String? mobile;
  final String? address;
  final String? grades;

  const UserEntity({
    this.id,
    this.name,
    this.email,
    this.grades,
    this.mobile,
    this.address,
  });

  @override
  List<Object?> get props =>
      [id, name, email, mobile, address, grades];
}
