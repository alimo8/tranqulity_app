import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      initialValue: selectedGender,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
      ),
      hint: const Text("Gender", style: TextStyle(color: Colors.grey)),
      items: const [
        DropdownMenuItem(value: "Male", child: Text("Male")),
        DropdownMenuItem(value: "Female", child: Text("Female")),
      ],
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
      },
      validator: (value) {
        if (value == null) {
          return "Please select your gender";
        }
        return null;
      },
    );
  }
}
