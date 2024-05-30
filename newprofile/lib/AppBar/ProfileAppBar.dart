// import 'package:flutter/material.dart';
// import '../NotificationsBadge.dart';
// import 'ProfileAppBarFlexibleSpace.dart';

// class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const ProfileAppBar(
//       {super.key,
//       required this.isProfileUserNameRoleRequired,
//       required this.leftPadding});
//   final bool isProfileUserNameRoleRequired;
//   final double leftPadding;

//   @override
//   Size get preferredSize => const Size.fromHeight(140.0);

//   @override
//   Widget build(BuildContext context) {
//     return PreferredSize(
//       preferredSize: const Size.fromHeight(140.0),
//       child: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: <Color>[
//               Color.fromRGBO(80, 98, 212, 1),
//               Color.fromRGBO(80, 98, 212, 1),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: AppBar(
//             leading: Padding(
//               padding:
//                   EdgeInsets.only(bottom: AppBar().preferredSize.height * 0.95),
//               child: IconButton(
//                 icon: const Icon(
//                   Icons.arrow_back,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {
//                   // Handle back arrow pressed
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//             toolbarHeight: 120,
//             actions: [
//               Padding(
//                 padding: EdgeInsets.only(
//                     bottom: AppBar().preferredSize.height * 0.9),
//                 child: const NotificationBadge(notificationCount: 5),
//               ),
//             ],
//             flexibleSpace: ProfileAppBarFlexibleSpace(leftPadding: leftPadding, isProfileUserNameRoleRequired: isProfileUserNameRoleRequired),
//             title: Padding(
//               padding:
//                   EdgeInsets.only(bottom: AppBar().preferredSize.height * 0.95),
//               child: const Text(
//                 'Profile',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../NotificationsBadge.dart';
import 'ProfileAppBarFlexibleSpace.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    Key? key,
    required this.isProfileUserNameRoleRequired,
    required this.leftPadding,
  }) : super(key: key);

  final bool isProfileUserNameRoleRequired;
  final double leftPadding;

  @override
  Size get preferredSize => const Size.fromHeight(140.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(140.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(80, 98, 212, 1),
              Color.fromRGBO(80, 98, 212, 1),
            ],
          ),
        ),
        child: SafeArea(
          child: AppBar(
            leading: Padding(
              padding:
                  EdgeInsets.only(bottom: AppBar().preferredSize.height * 0.95),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle back arrow pressed
                  Navigator.pop(context);
                },
              ),
            ),
            toolbarHeight: 120,
            actions: [
              if (isProfileUserNameRoleRequired)
                Padding(
                  padding: EdgeInsets.only(
                      bottom: AppBar().preferredSize.height * 0.9),
                  child: const NotificationBadge(notificationCount: 5),
                ),
            ],
            flexibleSpace: ProfileAppBarFlexibleSpace(leftPadding: leftPadding,isProfileUserNameRoleRequired: isProfileUserNameRoleRequired),
            title: Padding(
              padding: EdgeInsets.only(
                bottom: AppBar().preferredSize.height * 0.95,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  isProfileUserNameRoleRequired ? 'Profile' : 'Edit Profile',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ),
          ),
        ),
      ),
    );
  }
}
