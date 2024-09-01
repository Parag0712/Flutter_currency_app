import 'package:flutter/material.dart';

PreferredSizeWidget App_bar() {
  return AppBar(
    title: Text(
      "Currency Converter",
      // Uncomment and modify the style if needed
      // style: TextStyle(color: Color(0xFF3E001D)),
    ),
    centerTitle: true,
    elevation: 0,
    leading: Icon(Icons.currency_exchange),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: Color(0xFFFFDAD6),
        title: Text(
          "USD to INR",
          style: TextStyle(color: Color(0xFF3E001D)),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    ),
  );
}
