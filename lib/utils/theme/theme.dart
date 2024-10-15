import 'package:flutter/material.dart';
import 'package:home_cleaning/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:home_cleaning/utils/theme/custom_themes/navigation_bar_theme.dart';
import 'package:home_cleaning/utils/utils.dart';

import 'custom_themes/chip_theme.dart';
import 'custom_themes/dropdown_menu_theme.dart';
import 'custom_themes/list_tile_theme.dart';
import 'custom_themes/tabbar_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    chipTheme: TChipTheme.lightChipThemeData,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    tabBarTheme: TTabBarTheme.lightTabBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    listTileTheme: TListTileTheme.lightListTileThemeData,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    dropdownMenuTheme: TDropdownMenuTheme.lightDropdownMenuThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    navigationBarTheme: TNavigationBarTheme.lightNavigationBarThemeData,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    chipTheme: TChipTheme.darkChipThemeData,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    tabBarTheme: TTabBarTheme.darkTabBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    listTileTheme: TListTileTheme.darkListTileThemeData,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
    dropdownMenuTheme: TDropdownMenuTheme.darkDropdownMenuThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    navigationBarTheme: TNavigationBarTheme.darkNavigationBarThemeData,
  );
}
