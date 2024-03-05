import 'package:flutter/material.dart';

class MenuProfilePage extends StatefulWidget {
  final String title;
  final Icon icon;
  final Function onTab;
  const MenuProfilePage({
    super.key,
    required this.title,
    required this.icon,
    required this.onTab,
  });

  @override
  State<MenuProfilePage> createState() => _MenuProfilePageState();
}

class _MenuProfilePageState extends State<MenuProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () => widget.onTab(),
          leading: Container(
            height: 30,
            width: 30,
            child: widget.icon,
          ),
          title: Text(widget.title),
        ),
        Divider(),
      ],
    );
  }
}
