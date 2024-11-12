class LoginDto {
  final String username;
  final String password;

  LoginDto({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }

  factory LoginDto.fromJson(Map<String, dynamic> json) {
    return LoginDto(
      username: json['username'],
      password: json['password'],
    );
  }
}