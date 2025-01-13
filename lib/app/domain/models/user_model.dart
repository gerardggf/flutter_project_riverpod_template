class UserModel {
  final String name;
  final String id;
  final String email;
  final DateTime creationDate;

  UserModel({
    required this.name,
    required this.id,
    required this.email,
    required this.creationDate,
  });

  UserModel copyWith({
    String? name,
    String? id,
    String? email,
    DateTime? creationDate,
  }) =>
      UserModel(
        name: name ?? this.name,
        id: id ?? this.id,
        email: email ?? this.email,
        creationDate: creationDate ?? this.creationDate,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"] ?? '',
        id: json["id"] ?? '',
        email: json["email"] ?? '',
        creationDate: json["creationDate"] ?? DateTime(1900),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "email": email,
        "creationDate": creationDate,
      };
}
