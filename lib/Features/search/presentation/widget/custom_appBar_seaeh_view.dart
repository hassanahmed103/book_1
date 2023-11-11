import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomAppBaSearch extends StatelessWidget {
  const CustomAppBaSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Colors.lightBlue  ,
        decoration: InputDecoration(
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),

          hintText: 'search',
          suffixIcon: Opacity(
            opacity: .5,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 30,
              ),
            ),
          ),
        ));
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.white
      ),
      borderRadius:BorderRadius.circular(12),
    );
  }
}
