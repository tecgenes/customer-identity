import 'package:customer_identity/src/features/auth/register/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    super.id,
    super.name,
    super.email,
    super.grades,
    super.mobile,
    super.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      grades: json["grades"],
      mobile: json["mobile"],
      address: json["address"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'grades': grades,
      'mobile': mobile,
      'address': address,
    };
  }
}
