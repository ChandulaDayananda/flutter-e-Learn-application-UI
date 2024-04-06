import 'package:flutter/material.dart';
import 'package:learning_app/models/class_model.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  List<ClassModel> classes = [
    ClassModel(
        name: "Mathematics",
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI5XkQNeGZD4DtVoagXaBwLQg6RVH3ObTJlA&usqp=CAU',
        studentCount: 200),
    ClassModel(
        name: "Music",
        image:
            'https://images.squarespace-cdn.com/content/v1/5a5d02d4b07869b960fa1da0/1516558077227-YFIILSIBQNQJB4RZMGUP/GIAM_Icon_AcademyOfMusic_RGB.png',
        studentCount: 150),
    ClassModel(
        name: "Art",
        image:
            'https://images.twinkl.co.uk/tr/image/upload/t_illustration/illustation/painting-palette.png',
        studentCount: 375)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
        BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people_outlined), label: "Account")
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Classes",
          style: TextStyle(
              color: Colors.purple, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.purple,
        ),
      ),
      body: ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(classes[index].image),
            ),
            title: Text(classes[index].name),
            subtitle: Text("Student Count - ${classes[index].studentCount}"),
          );
        },
      ),
    );
  }
}
