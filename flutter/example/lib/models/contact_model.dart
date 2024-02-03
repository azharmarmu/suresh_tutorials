class ContactModel {
  String name;
  String number;

  ContactModel({
    required this.name,
    required this.number,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      name: json['name'],
      number: json['number'],
    );
  }
}
