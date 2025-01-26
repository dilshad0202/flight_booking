import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flutter/material.dart';

class WithPaddingHoriz extends StatelessWidget {
  const WithPaddingHoriz({super.key, required this.child,this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: padding ?? AppSpacing.md),
      child: child,
    );
  }
}


class WithPaddingVer extends StatelessWidget {
  const WithPaddingVer({super.key, required this.child,this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: padding ?? AppSpacing.md),
      child: child,
    );
  }
}



class WithPaddingTop extends StatelessWidget {
  const WithPaddingTop({super.key, required this.child,this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: padding ?? AppSpacing.md),
      child: child,
    );
  }
}

class WithPaddingStart extends StatelessWidget {
  const WithPaddingStart(
      {super.key, required this.child, required this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding ?? AppSpacing.md),
      child: child,
    );
  }
}



class WithPaddingEnd extends StatelessWidget {
  const WithPaddingEnd(
      {super.key, required this.child, required this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding ?? AppSpacing.md),
      child: child,
    );
  }
}

enum LayoutOrientation { horizontal, vertical }

class WithLayout extends StatelessWidget {
  const WithLayout({
    super.key,
    this.orientation,
    required this.children,
    this.backgroundColor,
    this.backgroundImageAssetUrl,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.spacing,
    this.mainAxisSize,
    this.padding,
    this.height,
    this.width,
    this.borderRadius,
    this.borderColor,
    this.gradient,
  });

  final String? backgroundImageAssetUrl;
  final LayoutOrientation? orientation;
  final List<Widget> children;
  final MainAxisSize? mainAxisSize;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final Color? backgroundColor;
  final double? spacing;
  final double? padding;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? borderColor;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    List<Widget> layoutChildren = [];

    if (spacing != null) {
      for (var i = 0; i < children.length; i++) {
        layoutChildren.add(children[i]);
        if (i != children.length - 1) {
          layoutChildren.add(SizedBox(
              width: orientation == LayoutOrientation.horizontal ? spacing : 0,
              height:
                  orientation == LayoutOrientation.horizontal ? 0 : spacing));
        }
      }
    }

    if (orientation == LayoutOrientation.horizontal) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            color: backgroundColor,
            border:
                Border.all(width: 1, color: borderColor ?? Colors.transparent),
            gradient: gradient,
            image: backgroundImageAssetUrl != null
                ? DecorationImage(
                    opacity: 0.8,
                    image: AssetImage(backgroundImageAssetUrl!),
                    fit: BoxFit.cover,
                  )
                : null),
        height: height,
        width: width,
        child: Padding(
            padding: EdgeInsets.all(padding ?? 0),
            child: Row(
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.start,
              children: layoutChildren.isEmpty ? children : layoutChildren,
            )),
      );
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        color: backgroundColor,
        border: Border.all(width: 1, color: borderColor ?? Colors.transparent),
        gradient: gradient,
        image: backgroundImageAssetUrl != null
            ? DecorationImage(
                opacity: 0.8,
                image: AssetImage(backgroundImageAssetUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      height: height,
      width: width,
      child: Padding(
        padding: EdgeInsets.all(padding ?? 0),
        child: Column(
          mainAxisSize: mainAxisSize ?? MainAxisSize.max,
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
          children: layoutChildren.isEmpty ? children : layoutChildren,
        ),
      ),
    );
  }
}
