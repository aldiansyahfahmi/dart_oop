class User {
  String? username;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main() {
  // cara biasa
  var user = User();
  user.username = 'aldiansyah';
  user.name = 'Aldi';
  user.email = 'aldi@example.com';

  print(user.username);

  // menggunakan casecade notation (tidak nullable)
  var user1 = User()
    ..username = 'aldiansyah'
    ..name = 'Aldi'
    ..email = 'aldi@example.com';

  print(user1.username);

  // menggunakan casecade notation (nullable)
  User? user2 = createUser()
    ?..username = 'aldiansyah'
    ..name = 'Aldi'
    ..email = 'aldi@example.com';

  print(user2?.username);
}
