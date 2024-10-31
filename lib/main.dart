import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WeatherScreen(),
      ),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration( 
        image: DecorationImage(
          image: AssetImage('assets/images.jpeg'), 
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const Text(
              'Depok',
              style: TextStyle(
                fontSize: 100,
                color: Color.fromARGB(255, 245, 243, 243),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Wednesday, October 30, 2024',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(214, 238, 244, 246),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              '28°c',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 245, 244, 244),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(20, (index) {
                return Container(
                  width: 10,
                  height: 3,
                  color: index % 2 == 0 ? Colors.white54 : Colors.transparent,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                );
              }),
            ),
            const SizedBox(height: 20),
            const Text(
              'Cloudy',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '25°C / 28°C',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}