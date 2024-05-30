import 'package:flutter/material.dart';

class RoleInfo extends StatelessWidget {
  const RoleInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:const [
          SizedBox(
            height: 4,
          ),
          Text(
            'Akhil Y',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            'CEGMA Admin',
            style: TextStyle(
              color: Colors.green,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 2,
          ),
        ],
      );
  }
}
