import 'package:flutter/material.dart';

class ForecastSection extends StatelessWidget {
  final double height;
  final String title;
  final int length;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  const ForecastSection({
    super.key,
    required this.title,
    required this.length,
    required this.itemBuilder,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Title(title: title),
        const SizedBox(height: 12),
        SizedBox(
          height: height,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: length,
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(title),
    );
  }
}
