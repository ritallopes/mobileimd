import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget implements PreferredSizeWidget {
  const MyMenu({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Application",
        style: TextStyle(color: Colors.white),
      ),

      titleSpacing: 00.0,
      toolbarHeight: 60.2,
      toolbarOpacity: 0.8,
      backgroundColor: Colors.pink[400],
      leading: const BackButton(
        color: Colors.white,
      ), //IconButton
      actions: [
        PopupMenuButton<int>(
          itemBuilder: (context) => [],
          offset: const Offset(0, 100),
          color: Colors.white,
        ),
      ],
    );
  }
}
