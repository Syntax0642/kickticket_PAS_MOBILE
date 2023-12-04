import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -106,
            top: 0,
            child: CircleAvatar(
              radius: 45.5,
              backgroundImage: AssetImage('assets/pict.jpeg'),
            ),
          ),
          Positioned(
            left: 10,
            top: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ayika',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25, // Adjust the font size as needed
                  ),
                ),
                Text(
                  '@aku keren',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18, // Adjust the font size as needed
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
