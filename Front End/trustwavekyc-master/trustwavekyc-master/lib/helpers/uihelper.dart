import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trustwavekyc/global/colors.dart';
import 'package:trustwavekyc/global/textstyles.dart';

class UIHelper {
  static loadingBlock(
      {required BuildContext context, String message = 'Loading...'}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(),
            Material(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 150,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircularProgressIndicator(
                      color: ThemeColors.mainColor,
                    ),
                    Text(
                      message,
                      style: CustomTextStyles.small.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static Widget loadingScreen() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(),
        CircularProgressIndicator(
          color: ThemeColors.mainColor,
        ),
      ],
    );
  }

  static Widget showMessageInScreen({required String message}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bigBold.copyWith(
              color: Colors.white.withAlpha(200),
            ),
          ),
        ),
      ],
    );
  }

  static Widget showSomethingWentWrong() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(),
        Text(
          'Something Went Wrong',
          style: CustomTextStyles.bigBold,
        ),
      ],
    );
  }

  static showSnackBar({
    String message = 'Message',
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }

  static keyboardUnfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static Future<DateTime?> pickDob({
    required BuildContext context,
  }) async {
    DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      initialDate: DateTime(2004),
    );
    return picked;
  }

  static String formatDate({required DateTime dateTime}) {
    String finalstring = '';
    finalstring += dateTime.day.toString() +
        '/' +
        dateTime.month.toString() +
        '/' +
        dateTime.year.toString();
    return finalstring;
  }
}
