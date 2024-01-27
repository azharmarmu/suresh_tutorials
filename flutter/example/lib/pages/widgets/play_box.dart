import 'package:flutter/material.dart';

class PlayBox extends StatelessWidget {
  const PlayBox({
    super.key,
    required this.value,
    required this.onTap,
  });

  final String value;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          border: Border.all(color: Colors.blueGrey),
        ),
        child: Text(
          value,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
