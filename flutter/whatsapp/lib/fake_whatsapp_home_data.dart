List<Map<String, dynamic>> fakeData = [
  {
    'user_id': 1,
    'image_url':
        'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
    'title': 'Bob',
    'description': 'Lorerm ipsum',
    'time': '2:00 PM',
    'count': 0,
  },
  {
    'user_id': 2,
    'image_url':
        'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
    'title': 'Alex',
    'description': 'LLSAD asdbkjbasd ',
    'time': '11:00 AM',
    'count': 2,
  },
  {
    'user_id': 3,
    'image_url':
        'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
    'title': 'Alex',
    'description': 'LLSAD asdbkjbasd ',
    'time': '11:00 AM',
    'count': 2,
  }
];


List<UserModel> userFakeList = fakeData.map((e) => UserModel.fromJson(e)).toList();


class UserModel {
  final int userId;
  final String imageUrl;
  final String title;
  final String description;
  final String time;
  final int count;

  const UserModel({
    required this.userId,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.time,
    required this.count,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['user_id'],
      imageUrl: json['image_url'],
      title: json['title'],
      description: json['description'],
      time: json['time'],
      count: json['count'],
    );
  }
}
