class ContactModel {
  String name;
  String number;

  ContactModel({
    required this.name,
    required this.number,
  });

  factory ContactModel.fromJson(Map<dynamic, dynamic> json) {
    return ContactModel(
      name: json['name'],
      number: json['number'],
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'number': number,
      };
}
