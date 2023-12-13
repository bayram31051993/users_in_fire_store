class ProfileModel {
  String? name;
  String? surname;
  String? fatherName;

  ProfileModel({this.name, this.surname, this.fatherName});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surname = json['surname'];
    fatherName = json['fatherName'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'surname': surname, 'fatherName': fatherName};
  }
}
