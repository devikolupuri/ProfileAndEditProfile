import 'package:flutter/material.dart';
import 'ProfileActionButtons.dart';
import '../AppBar/ProfileAppBar.dart';
import 'ProfileDetailsView.dart';

class ProfileHomeView extends StatefulWidget {
  const ProfileHomeView({super.key});

  @override
  State<ProfileHomeView> createState() => _ProfileHomeViewState();
}

class _ProfileHomeViewState extends State<ProfileHomeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(isProfileUserNameRoleRequired: true, leftPadding: 20),
      body: SingleChildScrollView(
        child: Padding(
          padding:const  EdgeInsets.only(top: 50.0, left: 25, right: 25),
          child: Column(
            children:const  [
              SizedBox(height: 25.0),
              ProfileDetailsView(),
              SizedBox(height: 25.0),
              ProfileActionButtons()
            ],
          ),
        ),
      ),
    );
  }
}
