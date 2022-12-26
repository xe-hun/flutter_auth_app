import 'package:flutter/material.dart';

MaterialColor _primaryLight = Colors.blue;
Color _tertiaryLight = Colors.white;
Color _onTertiaryLight = Colors.grey.shade700;
Color _secondaryLight = Colors.blue.shade50;
Color _onSecondaryLight = Colors.grey.shade800;
Color _onBackgroundLight = Colors.grey.shade900;

ThemeData lightThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: _primaryLight).copyWith(
        tertiary: _tertiaryLight,
        secondary: _secondaryLight,
        onSecondary: _onSecondaryLight,
        onTertiary: _onTertiaryLight,
        onBackground: _onBackgroundLight),
    textTheme: Typography().black.copyWith(
        // labelLarge: const TextStyle(fontSize: 20), //on buttons
        // bodyMedium: TextStyle(
        //     color: Colors.grey.shade900,
        //     fontSize: 28,
        //     letterSpacing: 1.2,
        //     height: 1.5), //textstyle,

        // bodySmall: TextStyle(
        //   fontSize: 16,
        //   color: Colors.grey.shade800,
        // ),
        // titleMedium: const TextStyle(fontSize: 25),
        // labelMedium:
        //     const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
    iconTheme: IconThemeData(color: _tertiaryLight),
  );
}

ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      // highlightColor: Colors.grey.shade600,
      // textTheme: TextTheme(
      //     bodyText1: TextStyle(color: Colors.grey.shade200, fontSize: 18),
      //     bodyText2: TextStyle(
      //         color: Colors.grey.shade200,
      //         fontSize: 14,
      //         letterSpacing: 1.2,
      //         height: 1.5),
      //     headline4: TextStyle(color: Colors.grey.shade100, fontSize: 32)),
      );
}

InputDecorationTheme inputDecoration(BuildContext context) {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    filled: true,
    fillColor: Theme.of(context).colorScheme.tertiary,
    border: inputBorder(context),
    errorBorder: inputBorder(context),
    focusedBorder: inputBorder(context),
    focusedErrorBorder: inputBorder(context),
    enabledBorder: inputBorder(context),
    disabledBorder: inputBorder(context),
  );
}

OutlineInputBorder inputBorder(BuildContext context) {
  return const OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}

enum InCurvePosition {
  first,
  last,
}

class InCurve extends Curve {
  const InCurve(this.inCurvePosition);
  final InCurvePosition inCurvePosition;

  @override
  double transformInternal(double t) {
    if (inCurvePosition == InCurvePosition.first) {
      return t.clamp(0, .5) * 2;
      // clambDouble(t, 0, .5) * 2;
    } else {
      return (t.clamp(0.5, 1) - 0.5) * 2;
      // return (clampDouble(t, 0.5, 1) - 0.5) * 2;
    }
  }
}
