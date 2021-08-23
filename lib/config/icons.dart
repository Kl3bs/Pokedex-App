import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

final String pikachu = 'assets/icons/SVG/pikachu.svg';
final String disk = 'assets/icons/SVG/disk.svg';
final String candy = 'assets/icons/SVG/candy.svg';
final String leaf = 'assets/icons/SVG/leaf.svg';
final String poison = 'assets/icons/SVG/poison.svg';

HexColor mainColor = HexColor("#979797");

final Widget pikachuIcon = SvgPicture.asset(
  pikachu,
  color: mainColor,
);
final Widget diskIcon = SvgPicture.asset(
  disk,
  color: mainColor,
);
final Widget candyIcon = SvgPicture.asset(
  candy,
  color: mainColor,
);

final Widget leafIcon = SvgPicture.asset(
  leaf,
  color: mainColor,
);

final Widget poisonIcon = SvgPicture.asset(
  poison,
  color: mainColor,
);
