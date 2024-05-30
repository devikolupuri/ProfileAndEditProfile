import 'package:flutter/material.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({
    super.key,
  });

Widget createTextFeild(String label,String value) {
   return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          ':',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
}

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                createTextFeild('Email', 'Name@123.com'),
                const SizedBox(height: 16.0),
                createTextFeild('Employee ID', '12345'),
                const SizedBox(height: 16.0),
                createTextFeild('Organization Name', 'Eficens'),
                const SizedBox(height: 16.0),
                createTextFeild('Role', 'CEGMA Admin'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}