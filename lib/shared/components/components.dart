import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required void Function() function,
  required String text,
}) => Container(
  width: width,
  height: 50.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      radius,
    ),
    color: background,
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword=false,
  required void Function(String) onSubmit,
  required void Function(String) onChange,
  required IconData prefix,
  required String label ,
  IconData? suffix,
  required String? Function(String?)? validate, // Updated type to nullable String
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  obscureText:isPassword,
  validator: validate,
  decoration: InputDecoration(
    labelText:label ,
    prefixIcon:Icon(prefix),
    suffixIcon:suffix!=null?Icon(suffix):null,
    border: OutlineInputBorder(),
  ),
);
