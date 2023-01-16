import 'package:flutter/material.dart';

class ButtomSection extends StatelessWidget {
  const ButtomSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtomColumn(icon: Icons.call, label: 'CALL', color: color),
        ButtomColumn(icon: Icons.near_me, label: 'ROUTE', color: color),
        ButtomColumn(icon: Icons.share, label: 'SHARE', color: color)
      ],
    );
  }
}

class ButtomColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const ButtomColumn(
      {super.key,
      required this.icon,
      required this.label,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Icon(icon, color: color,),
        IconButton(onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        icon: Icon(icon, color: color,),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}