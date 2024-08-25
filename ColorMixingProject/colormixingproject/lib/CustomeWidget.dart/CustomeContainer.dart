// ignore: file_names
import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({super.key, this.colorItem,required this.heigth,required this.wigth});
  final Color? colorItem;
  final double wigth;
  final double heigth; 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: wigth,
      height: heigth,
      padding: const EdgeInsets.only(right: 30,left: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorItem
      ),
    );
  }
}