import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/models/home/navbar.model.dart';

class NavBar extends StatefulWidget {
  final List<NavBarModel> navbar;
  const NavBar({super.key, required this.navbar});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:  Border(top: BorderSide(
          color: context.customTheme!.gray!,
          width: 1.4
        ))
      ),
      child: Row(
        children: widget.navbar.map((e) => Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: SvgPicture.asset(
                e.assets!,
                semanticsLabel: e.name,
                color: context.customTheme?.fontColor,
                width: 24,
                height: 24,
              ),
            )
          )).toList(),
      ),
    );
  }
}