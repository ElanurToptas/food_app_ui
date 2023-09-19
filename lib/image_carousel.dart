import 'package:flutter/material.dart';

import 'constants.dart';
import 'demoData.dart';

class ImageCarouse extends StatefulWidget {
  const ImageCarouse({super.key});

  @override
  State<ImageCarouse> createState() => _ImageCarouseState();
}

class _ImageCarouseState extends State<ImageCarouse> {

  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            itemCount: demoBigData.length,
            onPageChanged:(value){
              setState(() {
                _currentPage=value;
              });
            },
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                demoBigData[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: defaultPadding,
            right: defaultPadding,
            child: Row(
              children: List.generate(
                demoBigData.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding / 4),
                  child: IndicatorDot(isActive: index == _currentPage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white38,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
