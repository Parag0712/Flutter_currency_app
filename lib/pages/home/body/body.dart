import 'package:flutte_first_app/widget/form/customtextfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final TextEditingController amountController;
  final double convertedAmount;
  final VoidCallback onConvert;
  final bool showError;

   const Body({
    super.key,
    required this.showError,
    required this.amountController,
    required this.convertedAmount,
    required this.onConvert,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "${amountController.text.isEmpty ? '0' : amountController.text} USD to ${convertedAmount == 0 ? '0' : convertedAmount.toStringAsFixed(2)} INR",
              style: TextStyle(
                fontStyle:
                    FontStyle.normal, // Use normal font style for clarity
                fontWeight: FontWeight.bold, // Bold text for emphasis
                fontSize: 24, // Font size for prominence
                color: const Color(0xFF3E001D), // Text color
                fontFamily: "Raleway", // Font family
                shadows: [
                  Shadow(
                    color: Colors.black
                        .withOpacity(0.3), // Subtle shadow for depth
                    offset: const Offset(2.0, 2.0), // Offset for shadow effect
                    blurRadius:
                        6.0, // Increased blur radius for a softer shadow
                  ),
                ],
              ),
            ),
          ),
          // padding and conatinaer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: CustomTextField(
              borderColor: const Color(0xFF3E001D),
              prefixIcon: Icons.monetization_on,
              prefixIconColor: const Color(0xFF3E001D),
              key: const Key("Amount"),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              labelText: 'Please Enter the amount in USD',
              controller: amountController,
              errorText: showError ? 'Please enter an amount' : null,
            ),
          ),

          // Elevate Button and TextButton both are same
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ElevatedButton(
              onPressed: () {
                onConvert();
                // for debug remove waring of print
                // debug,relese, profile
                if (kDebugMode) {
                  debugPrint("Butto Click");
                }
                // Respond to button press
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 15,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  // shape: OvalBorder(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.currency_exchange),
                  SizedBox(width: 8),
                  Text("Convert to INR")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
