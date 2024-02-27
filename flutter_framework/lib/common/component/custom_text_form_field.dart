import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? editingController;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final IconData? iconData;
  final bool isSuffixIcon;

  const CustomTextFormField({
    super.key,
    this.editingController,
    this.onChanged,
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.iconData,
    this.isSuffixIcon = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _visible = false;

  void _changeVisible() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    const baseBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0));
    return TextFormField(
      controller: widget.editingController,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          hintText: widget.hintText,
          errorText: widget.errorText,
          hintStyle: const TextStyle(color: Colors.black54, fontSize: 15.0),
          icon: Icon(widget.iconData),
          iconColor: Colors.black,
          border: baseBorder,
          focusedBorder: baseBorder.copyWith(
              borderSide: baseBorder.borderSide.copyWith(color: Colors.black)),
          suffixIcon: widget.isSuffixIcon
              ? IconButton(
                  onPressed: _changeVisible,
                  icon:
                      Icon(_visible ? Icons.visibility : Icons.visibility_off),
                  tooltip: _visible ? "Show" : "Hide",
                )
              : null),
      cursorColor: Colors.black,
      obscureText: widget.obscureText ? !_visible : widget.obscureText,
      onChanged: widget.onChanged,
    );
  }
}
