import 'package:flutter/material.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/screen/state_notifire_provider_screen.dart';
import 'package:untitled/screen/state_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "home",
      child: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StateProviderScreen()),
              );
            },
            child: Text("State Provider Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StateNotifireProviderScreen(),
                ),
              );
            },
            child: Text("State Provider Screen"),
          ),
        ],
      ),
    );
  }
}
