import 'package:flutter/material.dart';

class ProgramDetailScreen extends StatefulWidget {
  const ProgramDetailScreen({super.key});

  @override
  State<ProgramDetailScreen> createState() => _ProgramDetailScreenState();
}

class _ProgramDetailScreenState extends State<ProgramDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.orange,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        )
      ],
    );
  }
}