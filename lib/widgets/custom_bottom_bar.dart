import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('© 2024 Vogue Clone', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 16.0),
            IconButton(
              icon: const Icon(FontAwesomeIcons.facebookF, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.twitter, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.instagram, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
