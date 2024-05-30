import 'package:flutter/material.dart';
import '../EditProfile/EditProfileView.dart';

class ProfileActionButtons extends StatelessWidget {
  const ProfileActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: const Color.fromRGBO(25, 43, 162, 1),
            fixedSize: const Size(300, 50),
          ),
          child: const Text(
            'Edit',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const EditProfileView()),
            );
          },
        ),
        //),
        const SizedBox(height: 16.0),
        SizedBox(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(25, 43, 162, 1),
                width: 1.0,
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(300, 50),
              ),
              onPressed: () {
                // Handle Logout button pressed
              },
              child: const Text(
                'Logout',
                style: TextStyle(
                  color: Color.fromRGBO(25, 43, 162, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
