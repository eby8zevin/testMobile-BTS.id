class RegisterDto {
  final String email;
  final String password;
  final String username;

  RegisterDto({
    required this.email,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'username': username,
    };
  }

  factory RegisterDto.fromJson(Map<String, dynamic> json) {
    return RegisterDto(
      email: json['email'],
      password: json['password'],
      username: json['username'],
    );
  }
}