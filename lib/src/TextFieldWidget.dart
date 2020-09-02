import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    this.scureText = false,
    this.hint,
    this.icn,
    this.kBtype,
    this.ctrlr,
  });
  final bool scureText;
  final String hint;
  final IconData icn;
  final TextInputType kBtype;
  final TextEditingController ctrlr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: MediaQuery.of(context).size.height < 700
          ? MediaQuery.of(context).size.height
          : 400.0,
      child: TextFormField(
        controller: ctrlr,
        keyboardType: kBtype,
        autofocus: true,
        obscureText: scureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icn),
          hintText: hint,
          contentPadding: EdgeInsets.all(15),
          hoverColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
