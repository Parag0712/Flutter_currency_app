import 'package:flutte_first_app/pages/home/matrial/currency_converter_matrial_page.dart';
import 'package:flutter/material.dart';
import 'color_schemes.g.dart';
// relative import
// import 'package:flutte_first_app/pages/home/cupertino/currency_converter_cupertino_page.dart';
// import 'package:flutter/cupertino.dart';
// import './pages/home/currency_converter_matrial_page.dart';

void main() {
  runApp(const MyApp(key: Key("My App")));
}

// Type of widget
// 1) StatelessWidget => Less state Data is immutable (mean can't change)
// 2) StatefulWidget  => Has state Data is mutable (mean can change)

// StelessWidget abstract class
// we Override build method

// we have some desing
// 1) MaterialApp
// 2) cupertinoApp

class MyApp extends StatelessWidget {
  // we need constructor for super class
  /// super class need some key
  const MyApp({super.key});
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It App allow to localization navigation to use (Matrial App ,Cupertino App)

    // Global we have matrial app , localization , internationalization in global spacce
    // scaffold setup localspace own in this space  we add header footer and all
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // in Scaffold we show good widget
      // Using Scaffold we can add header footer and many more of matrial widget
      // home:return const Scaffold()
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),

      home: CurrencyConverterMatrialPage(),
    );
  }
}

// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       home: CurrencyConverterCupertinoPage(),
//     );
//   }
// }
