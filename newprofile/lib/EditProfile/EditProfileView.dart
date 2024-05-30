import 'package:flutter/material.dart';
import '../AppBar/ProfileAppBar.dart';
import '../TextFields/SmartLotoProfileTextField.dart';
import 'EditProfileActionButton.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  EditProfileViewState createState() => EditProfileViewState();
}

class EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
          isProfileUserNameRoleRequired: false,
          leftPadding: MediaQuery.of(context).size.width * 0.35),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Information',
                    style: TextStyle(
                      color: Color.fromARGB(255, 4, 42, 73),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SmartLotoProfileTextFeild(labelText: 'First Name*',enabled: true,),
              SmartLotoProfileTextFeild(labelText: 'Last Name',enabled: true,),
              SmartLotoProfileTextFeild(labelText: 'Email*',),
              SmartLotoProfileTextFeild(labelText: 'Emp ID'),
              SmartLotoProfileTextFeild(labelText: 'Organisation*'),
              SmartLotoProfileTextFeild(labelText: 'Role'),
              EditProfileActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}