import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_experiment/camera_page.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await availableCameras().then(
                  (value) => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraPage(cameras: value,),
                ),
              ),
            );
          },
          child: const Text('Launch Camera'),
        ),
      ),
    );
  }
}