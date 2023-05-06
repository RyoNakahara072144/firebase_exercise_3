import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.userId}) : super(key: key);

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('$userIdがログインしています'),);
  }
}
