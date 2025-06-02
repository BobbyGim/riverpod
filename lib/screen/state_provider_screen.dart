import 'package:flutter/material.dart';
import 'package:untitled/common/layout/default_layout.dart';

class StateProviderScreen extends StatelessWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "State Provider",
      backgroundColor: Colors.blueGrey[50],
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            // Open settings or perform an action
          },
        ),
      ],
      child: ListView(children: [
          
        ],
      ),
    );
  }
}
