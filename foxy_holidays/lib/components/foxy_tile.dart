import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String mystring;
  final IconData myicon;
  final void Function()? ontap;

  const MyListTile(
      {super.key,
      required this.myicon,
      required this.mystring,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        myicon,
      ),
      title: Text(mystring),
      onTap: ontap,
    );
  }
}
