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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gender'] = gender;
    map['name'] = name;
    map['email'] = email;
    map['image'] = imageThumb;
    return map;
  }

  @override
  String toString() {
    return 'RandomUser{gender: $gender, name: $name,'
        ' email: $email, imageThumb: $imageThumb}';
  }
}
