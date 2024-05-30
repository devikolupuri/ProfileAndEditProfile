import 'package:flutter/material.dart';

class ProfileEditIcon extends StatelessWidget {
  const ProfileEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 5,
        right: 5,
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: const Color.fromARGB(255, 4, 42, 73),
            ),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.edit,
              size: 13,
              color: Color.fromARGB(255, 4, 42, 73),
            ),
            onPressed: () {},
          ),
        ),
      );
  }
}
