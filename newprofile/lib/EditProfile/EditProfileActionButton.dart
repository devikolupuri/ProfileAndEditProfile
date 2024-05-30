import 'package:flutter/material.dart';

class EditProfileActionButtons extends StatelessWidget {
  const EditProfileActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: Colors.white,
              side: const BorderSide(
                width: 1,
                color: Color.fromARGB(255, 4, 42, 73),
              ),
            ),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Color.fromARGB(255, 4, 42, 73),
              ),
            ),
          ),
          const SizedBox(width: 18.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: const Color.fromRGBO(25, 43, 162, 1),
            ),
            child: const Text('Update',style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
