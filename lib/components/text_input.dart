import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final bool obscure;
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;
  final void Function(dynamic value)? onChanged;

  const TextInput({
    super.key,
    required this.obscure,
    required this.hintText,
    required this.controller,
    this.inputType = TextInputType.text,
    this.onChanged,
  });

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        keyboardType: widget.inputType,
        obscureText: widget.obscure ? _isObscured : false,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.normal,
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          suffixIcon: widget.obscure
              ? IconButton(
                  color: Colors.grey.shade500,
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
