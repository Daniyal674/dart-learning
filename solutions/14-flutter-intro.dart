import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Header(),
              LikeButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'My App',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget{
  const LikeButton({super.key});
  
  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  int likes=0;

  void increment(){
    setState((){
      likes++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Likes: $likes'),
        ElevatedButton(
          onPressed: increment,
          child: const Text('Like'),
        ),
      ],
    );
  }
}