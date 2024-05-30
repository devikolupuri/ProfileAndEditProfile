import 'package:flutter/material.dart';

class SmartLotoProfileTextFeild extends StatefulWidget {
  const SmartLotoProfileTextFeild({
    Key? key,
    required this.labelText,
    this.enabled = false, // Added enabled property with default value as true
  }) : super(key: key);

  final String labelText;
  final bool enabled; // Added enabled property

  @override
  State<SmartLotoProfileTextFeild> createState() =>
      _SmartLotoProfileTextFeildState();
}

class _SmartLotoProfileTextFeildState extends State<SmartLotoProfileTextFeild> {
  TextEditingController userInput = TextEditingController();
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4),
             color: widget.enabled ? Colors.white : Colors.grey.shade200,
          ),
          child: TextFormField(
            style: const TextStyle(fontSize: 12),
            controller: userInput,
            enabled: widget.enabled, // Use the enabled property value here
            decoration: InputDecoration(
              errorStyle: const TextStyle(color: Colors.white),
              floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                (Set<MaterialState> states) {
                  return const TextStyle(color: Color.fromRGBO(45, 69, 188, 1));
                },
              ),
              contentPadding:
                  const EdgeInsets.only(top: 8, bottom: 12, left: 12, right: 12),
              border: InputBorder.none,
              labelText: widget.labelText,
            ),
            maxLines: 5,
            minLines: 1,
            onChanged: (value) {},
            validator: (value) {
              if (value == null || value.isEmpty) {
                setState(() {
                  _errorMessage = 'Please enter some text';
                });
                return _errorMessage;
              } else {
                setState(() {
                  _errorMessage = null;
                  userInput.text = value;
                });
              }
              return null;
            },
          ),
        ),
        if (_errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              _errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}

