import 'package:flutter/material.dart';
import 'ProfileEditIcon.dart';
import 'RoleInfo.dart';

class ProfileAppBarFlexibleSpace extends StatelessWidget {
  const ProfileAppBarFlexibleSpace({
    super.key,
    required this.leftPadding,
    required this.isProfileUserNameRoleRequired,
  });

  final double leftPadding;
  final bool isProfileUserNameRoleRequired;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromRGBO(80, 98, 212, 1),
            Color.fromRGBO(25, 43, 162, 1)
          ],
        ),
      ), 
      child: Padding(
        padding: EdgeInsets.only(
            top: AppBar().preferredSize.height * 1.60, left: leftPadding),
        child: OverflowBox(
          maxHeight: 100,
          alignment: Alignment.topLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/sample.jpeg'),
                    radius: 60,
                  ),
                  isProfileUserNameRoleRequired? const SizedBox(width: 0,height: 0,): const ProfileEditIcon(),
                ],
              ),
              const SizedBox( width: 20,),
              isProfileUserNameRoleRequired ? const RoleInfo(): const SizedBox(width: 0,height: 0,)
            ],
          ),
        ),
      ),
    );
  }
}