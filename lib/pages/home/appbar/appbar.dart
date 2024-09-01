import 'package:flutter/material.dart';

PreferredSizeWidget App_bar() {
  return AppBar(
    title: const Text(
      "Currency Converter",
      // Uncomment and modify the style if needed
      // style: TextStyle(color: Color(0xFF3E001D)),
    ),
    centerTitle: true,
    elevation: 0,
    leading: const Icon(Icons.currency_exchange),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: const Color(0xFFFFDAD6),
        title: const Text(
          "USD to INR",
          style: TextStyle(color: Color(0xFF3E001D)),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    ),
  );
}
