class ProfileSource {
  String imagePath;
  String profileName;
  ProfileSource({
    required this.imagePath,
    required this.profileName,
  });
}

List<ProfileSource> profileList = [
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/men/82.jpg',
      profileName: 'James'),
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/men/10.jpg',
      profileName: 'Nick'),
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/women/20.jpg',
      profileName: 'Jessi'),
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/women/60.jpg',
      profileName: 'Leon'),
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/men/66.jpg',
      profileName: 'Keny'),
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/women/85.jpg',
      profileName: '_cherly_'),
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/men/89.jpg',
      profileName: '!Dennis'),
  ProfileSource(
      imagePath: 'https://randomuser.me/api/portraits/men/62.jpg',
      profileName: 'Mark'),
];
