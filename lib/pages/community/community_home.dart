import 'package:flutter/material.dart';

class CommunityHome extends StatefulWidget {
  const CommunityHome({super.key});

  @override
  State<CommunityHome> createState() => _CommunityHomeState();
}

class _CommunityHomeState extends State<CommunityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Community'),
      ),
      body: Center(
        child: Text(
          'Community Home',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
