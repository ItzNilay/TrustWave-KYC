import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trustwavekyc/global/textfieldstyles.dart';
import 'package:trustwavekyc/global/textstyles.dart';

class LabelFieldWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  const LabelFieldWidget({
    super.key,
    this.labelText = 'title',
    this.textEditingController,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              labelText,
              style: CustomTextStyles.small.copyWith(
                color: Colors.black.withAlpha(150),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    controller:
                        textEditingController ?? TextEditingController(),
                    cursorHeight: 20,
                    style: CustomTextStyles.medium.copyWith(height: 1.4),
                    keyboardType: textInputType ?? TextInputType.name,
                    decoration: TextfieldStyles.fillerDecoration,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
