import 'package:flutter/material.dart';

import 'colors.dart';

Widget myAppBAr ()
{
  return AppBar(
      backgroundColor: residentbasicColor,
      title: Text(
          "Royal Palm Estate"
      ),
      actions: [
        Center(
          child: Wrap(
            spacing: 16,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              Icon(Icons.shield),
              Icon(Icons.person),
              Icon(Icons.logout)
            ],
          ),
        )
      ],
      automaticallyImplyLeading: false
  );
}