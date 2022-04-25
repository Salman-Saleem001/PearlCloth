import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

InputDecoration getSearchFieldDecoration() {
  return InputDecoration(
    prefixIcon: Icon(
      Icons.search,
      color: Color(ColorX.searchGrey),
    ),
    hintText: 'Search',
    hintStyle: TextStyle(
      color: Color(ColorX.searchGrey),
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 1.0,
        color: Color(ColorX.searchGrey),
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 1.0,
        color: Color(ColorX.searchGrey),
      ),
    ),
  );
}
