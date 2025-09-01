import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(this.wantedScreen,{super.key});

  final Widget wantedScreen ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFA29E9A), Color(0xFFB8B5B0)],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: wantedScreen
    );
  }
}