import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

ColorScheme kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 116, 81, 122));

ColorScheme kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 51, 64, 90));

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kDarkColorScheme,
      cardTheme: const CardTheme()
          .copyWith(color: kDarkColorScheme.secondaryContainer),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer)),
    ),
    theme: ThemeData().copyWith(
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.all(6)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primary,
                foregroundColor: kColorScheme.onPrimary)),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                color: kColorScheme.onPrimaryContainer, fontSize: 18))),
    home: const Expenses(),
  ));
}
