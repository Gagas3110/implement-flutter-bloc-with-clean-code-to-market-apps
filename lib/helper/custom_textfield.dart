import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormTextField extends StatelessWidget {
  final Widget? suffixIcon;
  final String? hint, label;
  final String? Function(String?)? validator, onChanged, onAction;
  final List<TextInputFormatter>? formatter;
  final Function()? onTap;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? readOnly, enabled;
  final int? maxLine, maxLength;
  final bool? obsecure;

  const CustomFormTextField(
      {Key? key,
      this.suffixIcon,
      this.hint,
      this.label,
      this.validator,
      this.onChanged,
      this.onAction,
      this.inputType,
      this.inputAction,
      this.focusNode,
      this.readOnly,
      this.onTap,
      this.controller,
      this.enabled,
      this.maxLine,
      this.maxLength,
      this.obsecure,
      this.formatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: this.inputType != TextInputType.number,
      inputFormatters: this.formatter,
      autofocus: true,
      readOnly: this.readOnly ?? false,
      controller: this.controller,
      validator: this.validator,
      onChanged: this.onChanged,
      focusNode: this.focusNode,
      keyboardType: this.inputType,
      maxLines: this.maxLine,
      obscureText: this.obsecure ?? false,
      textInputAction: this.inputAction,
      onFieldSubmitted: this.onAction,
      onTap: this.onTap,
      style: TextStyle(color: Colors.black, fontSize: 12),
      decoration: InputDecoration(
        suffixIcon: this.suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabled: this.enabled ?? true,
        labelText: this.label,
        hintText: this.hint,
        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
        labelStyle: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
        filled: true,
        fillColor: (readOnly == null)
            ? Colors.grey.shade300
            : readOnly!
                ? Colors.grey.shade300
                : Colors.grey.shade300,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((4)),
            borderSide: BorderSide(color: Colors.grey.shade300)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((4)),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 0.0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((4)),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((4)),
            borderSide: BorderSide(color: Colors.red, width: 0.5)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((4)),
            borderSide: BorderSide(color: Colors.red, width: 0.5)),
      ),
    );
  }
}