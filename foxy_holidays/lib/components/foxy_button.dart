import 'package:flutter/material.dart';

class FoxyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;

  const FoxyButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}