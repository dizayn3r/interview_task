import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final bool isSelected;
  final String tag;
  final String text;
  final Function()? onTap;

  const OptionWidget({
    super.key,
    this.isSelected = false,
    required this.tag,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: const Color(0xFF232A2E),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            width: 2.0,
            color: isSelected ? const Color(0xFF8B88EF) : const Color(0xFF232A2E),
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        child: Row(
          children: [
            // Option Tag
            Container(
              width: 24.0,
              height: 24.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF8B88EF) : Colors.transparent,
                border: Border.all(
                  color: isSelected ? const Color(0xFF8B88EF) : const Color(0xFFC4C4C4),
                  width: 1.0,
                ),
                shape: BoxShape.circle,
              ),
              child: Text(
                tag,
                style: const TextStyle(
                  fontSize: 10.0,
                  fontFamily: 'ProximaNova',
                  color: Color(0xFFC4C4C4),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 8.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'ProximaNova',
                    color: Color(0xFFC4C4C4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
