import 'package:flutter/material.dart';
import 'package:guide/constants/constants.dart';
import 'package:guide/widgets/drop_down.dart';

import '../widgets/text_widget.dart';

// ignore: camel_case_types
class services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      backgroundColor: scaffoldBackgroundColor,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Flexible(
                child: TextWidget(
                  label: "Chosen Model:",
                  fontSize: 16,
                ),
              ),
              Flexible(
                flex: 2,
                child: ModelsDrowDownWidget()),
            ],
          ),
        );
      },
    );
  }
}
