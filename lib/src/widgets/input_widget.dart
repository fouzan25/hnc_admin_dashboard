import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;
  final Widget? icon;
  final bool isPasswordFelid;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Function(String?)? onSave;
  final Function(String?)? onChange;
  final bool isReadableFiled;
  final bool isFilled;

  const InputWidget({
    Key? key,
    this.labelText,
    this.icon,
    this.isPasswordFelid = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onSave,
    this.onChange,
    this.isReadableFiled = false,
    this.isFilled = false,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        readOnly: widget.isReadableFiled,
        controller: widget.controller,
        key: widget.key,
        validator: widget.validator,
        onChanged: widget.onChange,
        onSaved: widget.onSave,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPasswordFelid ? _obscureText : false,
        decoration: InputDecoration(
          filled: widget.isFilled,
          prefixIcon: widget.icon,
          suffixIcon: widget.isPasswordFelid
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
