import 'package:flutter/material.dart';

const kPrimaryColor = Colors.black;

class Paymentmethod extends StatefulWidget {
  const Paymentmethod({
    Key? key,
    required this.text,
    required this.image,
    this.press,
  }) : super(key: key);

  final String text;
  final String image;
  final VoidCallback? press;

  @override
  _PaymentmethodState createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: kPrimaryColor,
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });

          // Unselect other checkboxes
          widget.press?.call();

          // Call the provided press callback
          if (widget.press != null) {
            widget.press!();
          }
        },
        child: Row(
          children: [
            Image.asset(
              widget.image,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 20),
            Expanded(child: Text(widget.text)),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Colors.green : kPrimaryColor,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? Colors.green : Colors.transparent,
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
