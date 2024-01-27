import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/models/home/navbar.model.dart';

class NavBar extends StatefulWidget {
  final List<NavBarModel> navbar;
  final int? active;
  final Function(int)? change;
  const NavBar({super.key, required this.navbar, this.active, this.change});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
        color: context.theme.dividerColor,
        // color: Color.fromARGB(255, 245, 243, 243),
        width: 1.4,
      ))),
      child: Row(
        children: widget.navbar
            .map((e) => Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  child: SvgPicture.asset(
                    e.assets!,
                    semanticsLabel: e.name,
                    color: e.index == (widget.active ?? 0)
                        ? context.theme.focusColor
                        : context.textTheme.bodyMedium?.color,
                    width: 24,
                    height: 24,
                  ),
                ).onTap(() {
                  widget.change?.call(e.index!);
                })))
            .toList(),
      ),
    );
  }
}
