import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  final double height;
  const MySizedBox({super.key , this.height = 5});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height,);
  }
}