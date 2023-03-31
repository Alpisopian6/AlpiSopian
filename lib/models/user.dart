class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Alpi Sopian",
      username: "Waluh cina",
      email: "waluhcina@email.ac.id",
      profilePhoto:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSnyGRvaWaTeEir8NpUcPEpjpi2owNYQCZ-A&usqp=CAU",
      phoneNumber: "081111111111",
    );
  }
}