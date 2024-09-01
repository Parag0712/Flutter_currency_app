import 'package:flutte_first_app/pages/home/appbar/appbar.dart';
import 'package:flutte_first_app/pages/home/body/body.dart';
import 'package:flutter/material.dart';

/// What is BuildContext
/// Have own BuildCotext context give location of widget in tree
/// how flutter know where is widget using buildcontext context
/// in tree
/// why we need this context When we use navigation setting of theme of app thats time we need context

class CurrencyConverterMatrialPage extends StatefulWidget {
  CurrencyConverterMatrialPage({super.key}) {
    print("constructor");
  }

  @override
  State<CurrencyConverterMatrialPage> createState() {
    print("createState");
    return _CurrencyConverterMatrialPageState();
  }
}

class _CurrencyConverterMatrialPageState
    extends State<CurrencyConverterMatrialPage> {
  int a = 10;
  final TextEditingController _amountController = TextEditingController();
  double _convertedAmount = 0;
  final double _exchangeRate = 82.0;
  bool _showError = false;
  // if we have some value which come from future or api
  @override
  void initState() {
    // TODO: implement initState
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    _showError = false;
    _amountController.dispose();
    super.dispose();
  }

  void _convertCurrency() {
    setState(() {
      // Check if the text is empty
      if (_amountController.text.isEmpty) {
        _showError = true;
        _convertedAmount = 0;
      } else {
        // Parse the amount and perform the conversion
        _showError = false;
        double amount = double.parse(_amountController.text);
        _convertedAmount = amount * _exchangeRate;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    // for theme
    // final theme = Theme.of(context);
    // RETURN SCAFFOLD
    return Scaffold(
      backgroundColor: Color(0xFFFFDAD6),
      appBar: App_bar(),
      body: Body(
        showError: _showError,
        amountController: _amountController,
        convertedAmount: _convertedAmount,
        onConvert: _convertCurrency,
      ),
    );
  }
}
