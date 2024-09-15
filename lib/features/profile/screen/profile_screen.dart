import 'package:flutter/material.dart';
import 'package:learn_flutter/features/_global/components/navbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [],
            ),
             Navbar(),
          ],
        ),
      )),
    );
  }
}
