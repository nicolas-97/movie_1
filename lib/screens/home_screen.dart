import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie app'),
        
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.arrow_right_rounded, size: 200,),
          onPressed: () {
            Navigator.pushNamed(context, '/details');
          },
        )
      ),
    );
  }
}