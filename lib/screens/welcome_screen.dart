import 'package:flutter/material.dart';
import 'package:learning_app/screens/login_screen.dart';

import '../components/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.v4yBZZbT-cr8ErRXXzNUrwHaFj?w=283&h=212&c=7&r=0&o=5&dpr=1.3&pid=1.7")),
              const Text(
                "Online Learning Platform",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Unlock knowledge on-the-go with our online learning app! Dive into diverse courses anytime, anywhere. Join us in the pursuit of endless learning.",
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                size: size,
                text: "Start Learning",
                ontap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
