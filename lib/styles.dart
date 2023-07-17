import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var grassettoNero = GoogleFonts.montserrat(
  textStyle: TextStyle(fontSize: 18),
  fontWeight: FontWeight.bold,
);

var grassettoBianco = GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: 16),
    fontWeight: FontWeight.bold,
    color: bianco);

var medioNero = GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: 16),
    fontWeight: FontWeight.w400,
    color: nero);

var medioBianco = const TextStyle(
    fontFamily: 'MonaSans',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white);

var leggeroNero = GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: 16),
    fontWeight: FontWeight.w300,
    color: nero);

var leggeroBianco = const TextStyle(
    fontFamily: 'MonaSans',
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: Colors.white);

var ombre = [
  BoxShadow(
    color: Color(0x16333333),
    blurRadius: 8,
    offset: Offset(0, 0),
    spreadRadius: 0,
  )
];

var nero = Color(0xff333333);
var bianco = Colors.white;
var biancosporco = Color(0xfff4f4f4);
