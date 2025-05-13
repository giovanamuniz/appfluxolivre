class User {
  final int? id;
  final String name;
  final String email;
  final String cpf;
  final String password;

  User({
    this.id, 
    required this.name,
    required this.email,
    required this.cpf,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'cpf': cpf,
      'password': password,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'], 
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      cpf: json['cpf'] ?? '',
      password: json['password'] ?? '',
    );
  }
}
