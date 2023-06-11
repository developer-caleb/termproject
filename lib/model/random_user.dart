class RandomUser {
  String gender;
  String name;
  String email;
  String imageThumb;

  RandomUser.fromJson(Map json)
      : gender = json['gender'],
        name = json['name']['first'],
        email = json['email'],
        imageThumb = json['picture']['medium'];

  @override
  String toString() {
    return 'RandomUser{gender: $gender, name: $name,'
        ' email: $email, imageThumb: $imageThumb}';
  }
}
