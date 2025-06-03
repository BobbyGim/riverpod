import 'package:flutter/material.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/screen/auto_dispose_modifier_screen.dart';
import 'package:untitled/screen/family_modifier_screen.dart';
import 'package:untitled/screen/future_provider_screen.dart';
import 'package:untitled/screen/listen_provider_screen.dart';
import 'package:untitled/screen/provider_screen.dart';
import 'package:untitled/screen/select_provider_screen.dart';
import 'package:untitled/screen/state_notifire_provider_screen.dart';
import 'package:untitled/screen/state_provider_screen.dart';
import 'package:untitled/screen/stream_provider_screen.dart';

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
            child: Text("State Notifier Provider Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FutureProviderScreen()),
              );
            },
            child: Text("Future Provider Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StreamProviderScreen()),
              );
            },
            child: Text("Stream Provider Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FamilyModifierScreen()),
              );
            },
            child: Text("Family Modifier Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AutoDisposeModifierScreen(),
                ),
              );
            },
            child: Text("Auto Modifier Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ListenProviderScreen()),
              );
            },
            child: Text("Listen Modifier Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SelectProviderScreen()),
              );
            },
            child: Text("Select Provider Screen"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => ProviderScreen()));
            },
            child: Text("Provider Screen"),
          ),
        ],
      ),
    );
  }
}
