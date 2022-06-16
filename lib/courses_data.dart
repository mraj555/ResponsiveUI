class Course {
  static final courses = [
    Course(
        title: 'Dart for Beginners',
        images: 'assets/dart_course.png',
        time: '23 H 17 M',
        description: 'Beginners course focused on Dart basics.'),
    Course(
        title: 'Clean UI Course',
        images: 'assets/ui.png',
        time: '18 H 29 M',
        description: 'Create beutiful user interfaces.'),
  ];

  final String title;
  final String images;
  final String time;
  final String description;

  Course(
      {required this.title,
      required this.images,
      required this.time,
      required this.description});
}
