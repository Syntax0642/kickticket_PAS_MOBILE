import 'package:flutter/material.dart';

class Paystyle extends StatelessWidget {
  final String label;
  final bool isReadOnly;
  final void Function(String) onChanged;
  final TextInputType? keyboardType;

  const Paystyle({
    required this.label,
    required this.isReadOnly,
    required this.onChanged,
    this.keyboardType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        readOnly: isReadOnly,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white70,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0), // Radius border
          ),
        ),
      ),
    );
  }
}
