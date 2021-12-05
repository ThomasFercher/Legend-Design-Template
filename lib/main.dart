import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legend_design_core/legend_design_app.dart';
import 'package:legend_design_core/styles/theming/theme_provider.dart';
import 'package:legend_design_core/typography/typography.dart';
import 'styles/appConfig.dart';
import 'styles/layoutConfig.dart';

void main() {
  /* TODO:

  give ThemeProvider a basic typrography (fontFamily, Weight, Sacing, etc, Color and Size (overiides))
  also create Typography Color System

  if Color not specifed give Colors over theme ColorTheme; 
 them same  TextStyle Sizing and the Sizing Themes
*/
  runApp(
    LegendApp(
      drawerRoutes: AppConfig.drawerRoutes,
      menuOptions: AppConfig.menuOptions,
      routes: AppConfig.routes,
      logo: Container(
        width: 54,
        height: 54,
      ),
      theme: ThemeProvider(
        darkTheme: AppConfig.darkColorTheme,
        lightTheme: AppConfig.lightColorTheme,
        sizingTheme: AppConfig.sizingTheme,
        themeType: LegendColorThemeType.DARK,
        typography: LegendTypography(
          //   base: GoogleFonts.nunito(),
          h6: GoogleFonts.lobsterTwo(),
        ),
      ),
      globalFooter: LayoutInfo.footer,
      future: Future.delayed(Duration(seconds: 2), () => true),
      splashScreen: Container(
        color: AppConfig.darkColorTheme.scaffoldBackgroundColor,
        child: Center(
          child: SizedBox(
            height: 64,
            width: 64,
            child: CircularProgressIndicator(
              color: AppConfig.darkColorTheme.primaryColor,
            ),
          ),
        ),
      ),
    ),
  );
}
