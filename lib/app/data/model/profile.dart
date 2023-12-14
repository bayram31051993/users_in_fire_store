class ProfileModel {
  String? name;
  String? surname;
  String? fatherName;
  String? uId;
  ProfileModel({this.name, this.surname, this.fatherName, this.uId});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surname = json['surname'];
    fatherName = json['fatherName'];
    uId = json['uId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'fatherName': fatherName,
      'uId': uId,
    };
  }
}
