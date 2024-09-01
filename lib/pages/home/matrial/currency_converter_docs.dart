import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMatrialPage extends StatelessWidget {
  const CurrencyConverterMatrialPage({super.key});

  /// What is BuildContext
  /// Have own BuildCotext context give location of widget in tree
  /// how flutter know where is widget using buildcontext context
  /// in tree
  /// why we need this context When we use navigation setting of theme of app thats time we need context
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Color(0xFF984061), width: 0.12));
    const focusBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
            color: Color(0xFF984061),
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignInside
            // width: 2,
            ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 36,
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.white,
                color: Colors.black,
                fontFamily: "Raleway",
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Enter your username',
            //     floatingLabelStyle:
            //         TextStyle(color: Colors.blue), // Label color when focused
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Colors.blue, // Change border color when focused
            //         width:
            //             2.0, // Optional: change border thickness when focused
            //       ),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Colors.blue, // Change border color when not focused
            //         width: 1.0, // Optional: border thickness when not focused
            //       ),
            //     ),
            //   ),
            //   cursorColor: Colors.blue,
            //   style: TextStyle(color: Colors.blue),
            // ),
            TextField(
              decoration: InputDecoration(
                border: border,
                enabledBorder: border,
                focusedBorder: focusBorder,
                // Also Come Error Border and Disabled Border
                // errorText: "Error",
                fillColor: Colors.black12,
                filled: true,
                helperText: 'Please Enter the amount in USD',
                hintText: 'Please Enter the amount in USD',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
                prefixIcon: Icon(Icons.monetization_on),

                // labelText: 'Please Enter the amount in USD',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: border,
                enabledBorder: border,
                focusedBorder: focusBorder,
                // Also Come Error Border and Disabled Border
                // errorText: "Error",
                fillColor: Colors.white,
                filled: true,
                // hintText: 'Please Enter the amount in USD',
                labelText: 'Please Enter the amount in USD',
                labelStyle: TextStyle(
                    color: Color(0xFF3E001D), fontWeight: FontWeight.w500),
                // hintStyle: TextStyle(
                //     fontWeight: FontWeight.normal, color: Color(0xFF3E001D)),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Color(0xFF3E001D),
              ),
              style: TextStyle(color: Color(0xFF3E001D)),
            ),

            TextField(
              decoration: InputDecoration(
                // errorText: "Error",
                helperText: 'Enter your place',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gapPadding: 10),
                labelText: 'Place ',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: double.infinity,
              // in text button we can't return and pass any string in opPress
              child: TextButton(
                  style: TextButton.styleFrom(
                    // minimumSize: Size(double.infinity, 50),
                    // maximumSize: Size(double.infinity, 50),
                    fixedSize: Size(double.infinity, 50),
                    backgroundColor: Color(0xFF3E001D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    // for debug remove waring of print
                    // debug,relese, profile
                    if (kDebugMode) {
                      debugPrint("Butto Click");
                    }
                    // Respond to button press
                  },
                  child: Text("Convert to INR")),
            ),
          ],
        ),
      ),
    );
  }
}
