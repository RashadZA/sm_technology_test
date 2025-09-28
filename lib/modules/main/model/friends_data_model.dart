import 'dart:convert';

import 'package:flutter/foundation.dart';


class FriendListResponseModel {
  List<Friend>? results;
  Info? info;
  FriendListResponseModel({
    this.results,
    this.info,
  });

  FriendListResponseModel copyWith({
    List<Friend>? results,
    Info? info,
  }) {
    return FriendListResponseModel(
      results: results ?? this.results,
      info: info ?? this.info,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': results?.map((x) => x.toMap()).toList(),
      'info': info?.toMap(),
    };
  }

  factory FriendListResponseModel.fromMap(Map<String, dynamic> map) {
    return FriendListResponseModel(
      results: map['results'] != null
          ? List<Friend>.from(
        (map['results'] as List).map<Friend?>(
              (x) => Friend.fromMap(x as Map<String, dynamic>),
        ),
      )
          : null,
      info: map['info'] != null
          ? Info.fromMap(map['info'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FriendListResponseModel.fromJson(String source) =>
      FriendListResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ResponseModel(results: $results, info: $info)';

  @override
  bool operator ==(covariant FriendListResponseModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.results, results) && other.info == info;
  }

  @override
  int get hashCode => results.hashCode ^ info.hashCode;
}
class Friend {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Dob? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;
  Friend({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  Friend copyWith({
    String? gender,
    Name? name,
    Location? location,
    String? email,
    Login? login,
    Dob? dob,
    Dob? registered,
    String? phone,
    String? cell,
    Id? id,
    Picture? picture,
    String? nat,
  }) {
    return Friend(
      gender: gender ?? this.gender,
      name: name ?? this.name,
      location: location ?? this.location,
      email: email ?? this.email,
      login: login ?? this.login,
      dob: dob ?? this.dob,
      registered: registered ?? this.registered,
      phone: phone ?? this.phone,
      cell: cell ?? this.cell,
      id: id ?? this.id,
      picture: picture ?? this.picture,
      nat: nat ?? this.nat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gender': gender,
      'name': name?.toMap(),
      'location': location?.toMap(),
      'email': email,
      'login': login?.toMap(),
      'dob': dob?.toMap(),
      'registered': registered?.toMap(),
      'phone': phone,
      'cell': cell,
      'id': id?.toMap(),
      'picture': picture?.toMap(),
      'nat': nat,
    };
  }

  factory Friend.fromMap(Map<String, dynamic> map) {
    return Friend(
      gender: map['gender'] != null ? map['gender'] as String : null,
      name: map['name'] != null
          ? Name.fromMap(map['name'] as Map<String, dynamic>)
          : null,
      location: map['location'] != null
          ? Location.fromMap(map['location'] as Map<String, dynamic>)
          : null,
      email: map['email'] != null ? map['email'] as String : null,
      login: map['login'] != null
          ? Login.fromMap(map['login'] as Map<String, dynamic>)
          : null,
      dob: map['dob'] != null
          ? Dob.fromMap(map['dob'] as Map<String, dynamic>)
          : null,
      registered: map['registered'] != null
          ? Dob.fromMap(map['registered'] as Map<String, dynamic>)
          : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      cell: map['cell'] != null ? map['cell'] as String : null,
      id: map['id'] != null
          ? Id.fromMap(map['id'] as Map<String, dynamic>)
          : null,
      picture: map['picture'] != null
          ? Picture.fromMap(map['picture'] as Map<String, dynamic>)
          : null,
      nat: map['nat'] != null ? map['nat'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Friend.fromJson(String source) =>
      Friend.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Friend(gender: $gender, name: $name, location: $location, email: $email, login: $login, dob: $dob, registered: $registered, phone: $phone, cell: $cell, id: $id, picture: $picture, nat: $nat)';
  }

  @override
  bool operator ==(covariant Friend other) {
    if (identical(this, other)) return true;

    return other.gender == gender &&
        other.name == name &&
        other.location == location &&
        other.email == email &&
        other.login == login &&
        other.dob == dob &&
        other.registered == registered &&
        other.phone == phone &&
        other.cell == cell &&
        other.id == id &&
        other.picture == picture &&
        other.nat == nat;
  }

  @override
  int get hashCode {
    return gender.hashCode ^
    name.hashCode ^
    location.hashCode ^
    email.hashCode ^
    login.hashCode ^
    dob.hashCode ^
    registered.hashCode ^
    phone.hashCode ^
    cell.hashCode ^
    id.hashCode ^
    picture.hashCode ^
    nat.hashCode;
  }
}
class Login {
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;
  Login({
    this.uuid,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  Login copyWith({
    String? uuid,
    String? username,
    String? password,
    String? salt,
    String? md5,
    String? sha1,
    String? sha256,
  }) {
    return Login(
      uuid: uuid ?? this.uuid,
      username: username ?? this.username,
      password: password ?? this.password,
      salt: salt ?? this.salt,
      md5: md5 ?? this.md5,
      sha1: sha1 ?? this.sha1,
      sha256: sha256 ?? this.sha256,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'username': username,
      'password': password,
      'salt': salt,
      'md5': md5,
      'sha1': sha1,
      'sha256': sha256,
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      uuid: map['uuid'] != null ? map['uuid'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      salt: map['salt'] != null ? map['salt'] as String : null,
      md5: map['md5'] != null ? map['md5'] as String : null,
      sha1: map['sha1'] != null ? map['sha1'] as String : null,
      sha256: map['sha256'] != null ? map['sha256'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Login.fromJson(String source) =>
      Login.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Login(uuid: $uuid, username: $username, password: $password, salt: $salt, md5: $md5, sha1: $sha1, sha256: $sha256)';
  }

  @override
  bool operator ==(covariant Login other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid &&
        other.username == username &&
        other.password == password &&
        other.salt == salt &&
        other.md5 == md5 &&
        other.sha1 == sha1 &&
        other.sha256 == sha256;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
    username.hashCode ^
    password.hashCode ^
    salt.hashCode ^
    md5.hashCode ^
    sha1.hashCode ^
    sha256.hashCode;
  }
}
class Coordinates {
  String? latitude;
  String? longitude;
  Coordinates({
    this.latitude,
    this.longitude,
  });

  Coordinates copyWith({
    String? latitude,
    String? longitude,
  }) {
    return Coordinates(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory Coordinates.fromMap(Map<String, dynamic> map) {
    return Coordinates(
      latitude: map['latitude'] != null ? map['latitude'] as String : null,
      longitude: map['longitude'] != null ? map['longitude'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coordinates.fromJson(String source) =>
      Coordinates.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Coordinates(latitude: $latitude, longitude: $longitude)';

  @override
  bool operator ==(covariant Coordinates other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude && other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
class Dob {
  String? date;
  int? age;
  Dob({
    this.date,
    this.age,
  });

  Dob copyWith({
    String? date,
    int? age,
  }) {
    return Dob(
      date: date ?? this.date,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'age': age,
    };
  }

  factory Dob.fromMap(Map<String, dynamic> map) {
    return Dob(
      date: map['date'] != null ? map['date'] as String : null,
      age: map['age'] != null ? map['age'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dob.fromJson(String source) =>
      Dob.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Dob(date: $date, age: $age)';

  @override
  bool operator ==(covariant Dob other) {
    if (identical(this, other)) return true;

    return other.date == date && other.age == age;
  }

  @override
  int get hashCode => date.hashCode ^ age.hashCode;
}
class Id {
  String? name;
  String? value;
  Id({
    this.name,
    this.value,
  });

  Id copyWith({
    String? name,
    String? value,
  }) {
    return Id(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory Id.fromMap(Map<String, dynamic> map) {
    return Id(
      name: map['name'] != null ? map['name'] as String : null,
      value: map['value'] != null ? map['value'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Id.fromJson(String source) =>
      Id.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Id(name: $name, value: $value)';

  @override
  bool operator ==(covariant Id other) {
    if (identical(this, other)) return true;

    return other.name == name && other.value == value;
  }

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
class Info {
  String? seed;
  int? results;
  int? page;
  String? version;
  Info({
    this.seed,
    this.results,
    this.page,
    this.version,
  });

  Info copyWith({
    String? seed,
    int? results,
    int? page,
    String? version,
  }) {
    return Info(
      seed: seed ?? this.seed,
      results: results ?? this.results,
      page: page ?? this.page,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seed': seed,
      'results': results,
      'page': page,
      'version': version,
    };
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      seed: map['seed'] != null ? map['seed'] as String : null,
      results: map['results'] != null ? map['results'] as int : null,
      page: map['page'] != null ? map['page'] as int : null,
      version: map['version'] != null ? map['version'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Info.fromJson(String source) =>
      Info.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Info(seed: $seed, results: $results, page: $page, version: $version)';
  }

  @override
  bool operator ==(covariant Info other) {
    if (identical(this, other)) return true;

    return other.seed == seed &&
        other.results == results &&
        other.page == page &&
        other.version == version;
  }

  @override
  int get hashCode {
    return seed.hashCode ^ results.hashCode ^ page.hashCode ^ version.hashCode;
  }
}
class Name {
  String? title;
  String? first;
  String? last;
  Name({
    this.title,
    this.first,
    this.last,
  });

  Name copyWith({
    String? title,
    String? first,
    String? last,
  }) {
    return Name(
      title: title ?? this.title,
      first: first ?? this.first,
      last: last ?? this.last,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'first': first,
      'last': last,
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      title: map['title'] != null ? map['title'] as String : null,
      first: map['first'] != null ? map['first'] as String : null,
      last: map['last'] != null ? map['last'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) =>
      Name.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Name(title: $title, first: $first, last: $last)';

  @override
  bool operator ==(covariant Name other) {
    if (identical(this, other)) return true;

    return other.title == title && other.first == first && other.last == last;
  }

  @override
  int get hashCode => title.hashCode ^ first.hashCode ^ last.hashCode;
}
class Street {
  int? number;
  String? name;
  Street({
    this.number,
    this.name,
  });

  Street copyWith({
    int? number,
    String? name,
  }) {
    return Street(
      number: number ?? this.number,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'name': name,
    };
  }

  factory Street.fromMap(Map<String, dynamic> map) {
    return Street(
      number: map['number'] != null ? map['number'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Street.fromJson(String source) =>
      Street.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Street(number: $number, name: $name)';

  @override
  bool operator ==(covariant Street other) {
    if (identical(this, other)) return true;

    return other.number == number && other.name == name;
  }

  @override
  int get hashCode => number.hashCode ^ name.hashCode;
}
class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  dynamic postcode;
  Coordinates? coordinates;
  Timezone? timezone;
  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  Location copyWith({
    Street? street,
    String? city,
    String? state,
    String? country,
    dynamic postcode,
    Coordinates? coordinates,
    Timezone? timezone,
  }) {
    return Location(
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      postcode: postcode ?? this.postcode,
      coordinates: coordinates ?? this.coordinates,
      timezone: timezone ?? this.timezone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street?.toMap(),
      'city': city,
      'state': state,
      'country': country,
      'postcode': postcode,
      'coordinates': coordinates?.toMap(),
      'timezone': timezone?.toMap(),
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      street: map['street'] != null
          ? Street.fromMap(map['street'] as Map<String, dynamic>)
          : null,
      city: map['city'] != null ? map['city'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      country: map['country'] != null ? map['country'] as String : null,
      postcode: map['postcode'] != null ? map['postcode'] as dynamic : null,
      coordinates: map['coordinates'] != null
          ? Coordinates.fromMap(map['coordinates'] as Map<String, dynamic>)
          : null,
      timezone: map['timezone'] != null
          ? Timezone.fromMap(map['timezone'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Location(street: $street, city: $city, state: $state, country: $country, postcode: $postcode, coordinates: $coordinates, timezone: $timezone)';
  }

  @override
  bool operator ==(covariant Location other) {
    if (identical(this, other)) return true;

    return other.street == street &&
        other.city == city &&
        other.state == state &&
        other.country == country &&
        other.postcode == postcode &&
        other.coordinates == coordinates &&
        other.timezone == timezone;
  }

  @override
  int get hashCode {
    return street.hashCode ^
    city.hashCode ^
    state.hashCode ^
    country.hashCode ^
    postcode.hashCode ^
    coordinates.hashCode ^
    timezone.hashCode;
  }
}
class Picture {
  String? large;
  String? medium;
  String? thumbnail;
  Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  Picture copyWith({
    String? large,
    String? medium,
    String? thumbnail,
  }) {
    return Picture(
      large: large ?? this.large,
      medium: medium ?? this.medium,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'large': large,
      'medium': medium,
      'thumbnail': thumbnail,
    };
  }

  factory Picture.fromMap(Map<String, dynamic> map) {
    return Picture(
      large: map['large'] != null ? map['large'] as String : null,
      medium: map['medium'] != null ? map['medium'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Picture.fromJson(String source) =>
      Picture.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Picture(large: $large, medium: $medium, thumbnail: $thumbnail)';

  @override
  bool operator ==(covariant Picture other) {
    if (identical(this, other)) return true;

    return other.large == large &&
        other.medium == medium &&
        other.thumbnail == thumbnail;
  }

  @override
  int get hashCode => large.hashCode ^ medium.hashCode ^ thumbnail.hashCode;
}
class Timezone {
  String? offset;
  String? description;
  Timezone({
    this.offset,
    this.description,
  });

  Timezone copyWith({
    String? offset,
    String? description,
  }) {
    return Timezone(
      offset: offset ?? this.offset,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': offset,
      'description': description,
    };
  }

  factory Timezone.fromMap(Map<String, dynamic> map) {
    return Timezone(
      offset: map['offset'] != null ? map['offset'] as String : null,
      description:
      map['description'] != null ? map['description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Timezone.fromJson(String source) =>
      Timezone.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Timezone(offset: $offset, description: $description)';

  @override
  bool operator ==(covariant Timezone other) {
    if (identical(this, other)) return true;

    return other.offset == offset && other.description == description;
  }

  @override
  int get hashCode => offset.hashCode ^ description.hashCode;
}
