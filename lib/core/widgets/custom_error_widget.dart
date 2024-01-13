import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text14(
        text: errMessage,
      ),
    );
  }
}
