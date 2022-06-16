import 'package:flutter/material.dart';
import 'package:responsive_ui/courses_data.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Course> courses = Course.courses;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[800],
        centerTitle: true,
        title: AppBarTitle(),
        actions: [
          MenuTextButton(text: 'Courses'),
          MenuTextButton(text: 'About'),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_email_unread_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Center(
            child: PageHeader(),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              CourseTile(course: courses[0]),
              CourseTile(course: courses[1]),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: SubscribeBlock(),
          ),
        ],
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          width: 800,
          color: Color.fromRGBO(255, 255, 255, 0.5),
          colorBlendMode: BlendMode.modulate,
          image: AssetImage('assets/header_image.png'),
        ),
        Text(
          'Our Courses',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 60,
            color: Colors.blueGrey[900],
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class CourseTile extends StatelessWidget {
  final Course course;

  const CourseTile({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.blueGrey[50],
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(course.images),
              SizedBox(
                height: 5,
              ),
              Text(
                course.time,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                course.description,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubscribeBlock extends StatelessWidget {
  const SubscribeBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Want to learn more?\nSubscribe to our newslatter!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 20,
              ),
            ),
            onPressed: () {},
            child: Text('SUBSCRIBE'),
          ),
        ),
      ],
    );
  }
}

class MenuTextButton extends StatelessWidget {
  final String text;

  const MenuTextButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      child: Text(text),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.school_rounded),
        Text(' LearnApp'),
      ],
    );
  }
}

