import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab L1 · 67121475'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 100),
            const SizedBox(height: 12),
            const Text(
              'กิตติภูมิ ปราชญนคร - 67121475',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Likes: $likes',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {
                setState(() {
                  likes++;
                });
              },
              child: const Text('Like'),
            ),
          ],
        ),
      ),
    );
  }
}