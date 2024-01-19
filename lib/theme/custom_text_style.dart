import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeItimGray600 => theme.textTheme.bodyLarge!.itim.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get bodyLargeKlarnaTextSecondaryContainer =>
      theme.textTheme.bodyLarge!.klarnaText.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumKlarnaTextSecondaryContainer =>
      theme.textTheme.bodyMedium!.klarnaText.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get bodyMediumMontserratGray50001 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratff8f8f8f =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: Color(0XFF8F8F8F),
        fontSize: 14.fSize,
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodySmallAlfaSlabOneOnSecondaryContainer =>
      theme.textTheme.bodySmall!.alfaSlabOne.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 8.fSize,
        fontWeight: FontWeight.w200,
      );
  static get bodySmallItimGray60001 => theme.textTheme.bodySmall!.itim.copyWith(
        color: appTheme.gray60001,
        fontSize: 12.fSize,
      );
  static get bodySmallLondrinaSolidGray500 =>
      theme.textTheme.bodySmall!.londrinaSolid.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallLondrinaSolidGray50002 =>
      theme.textTheme.bodySmall!.londrinaSolid.copyWith(
        color: appTheme.gray50002,
      );
  static get bodySmallMontserratGreen900 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.green900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallMontserratPrimary =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallMontserratPrimaryLight =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallMontserratff1ca672 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: Color(0XFF1CA672),
        fontSize: 12.fSize,
      );
  static get bodySmallOrangeA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orangeA700,
      );
  // Display text style
  static get displayMediumIndigoA200 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.indigoA200,
        fontSize: 40.fSize,
      );
  static get displayMediumItimPrimary =>
      theme.textTheme.displayMedium!.itim.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 40.fSize,
      );
  // Headline text style
  static get headlineSmallAlfaSlabOneOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.alfaSlabOne.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallKlarnaTextOrangeA700 =>
      theme.textTheme.headlineSmall!.klarnaText.copyWith(
        color: appTheme.orangeA700,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallRobotoSerif =>
      theme.textTheme.headlineSmall!.robotoSerif.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRosario =>
      theme.textTheme.headlineSmall!.rosario.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRosario_1 => theme.textTheme.headlineSmall!.rosario;
  // Helvetica text style
  static get helveticaNeuePurple800 => TextStyle(
        color: appTheme.purple800,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).helveticaNeue;
  // Label text style
  static get labelLargeTeal500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal500,
      );
  static get labelSmallMontserratDeeppurpleA10002 =>
      theme.textTheme.labelSmall!.montserrat.copyWith(
        color: appTheme.deepPurpleA10002,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeLight => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get titleLargeLondrinaSolid =>
      theme.textTheme.titleLarge!.londrinaSolid;
  static get titleLargeRosario => theme.textTheme.titleLarge!.rosario;
  static get titleLargeRosarioOnSecondaryContainer =>
      theme.textTheme.titleLarge!.rosario.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRosarioSemiBold =>
      theme.textTheme.titleLarge!.rosario.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRosarioff000000 =>
      theme.textTheme.titleLarge!.rosario.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRosariofffd0a0a =>
      theme.textTheme.titleLarge!.rosario.copyWith(
        color: Color(0XFFFD0A0A),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumKlarnaTextOnSecondaryContainer =>
      theme.textTheme.titleMedium!.klarnaText.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoOrangeA700 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.orangeA700,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallff8f8f8f => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF8F8F8F),
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get londrinaSolid {
    return copyWith(
      fontFamily: 'Londrina Solid',
    );
  }

  TextStyle get rosario {
    return copyWith(
      fontFamily: 'Rosario',
    );
  }

  TextStyle get klarnaSans {
    return copyWith(
      fontFamily: 'Klarna Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get blackHanSans {
    return copyWith(
      fontFamily: 'Black Han Sans',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'Helvetica Neue',
    );
  }

  TextStyle get robotoSerif {
    return copyWith(
      fontFamily: 'Roboto Serif',
    );
  }

  TextStyle get itim {
    return copyWith(
      fontFamily: 'Itim',
    );
  }

  TextStyle get klarnaText {
    return copyWith(
      fontFamily: 'Klarna Text',
    );
  }

  TextStyle get alfaSlabOne {
    return copyWith(
      fontFamily: 'Alfa Slab One',
    );
  }
}
