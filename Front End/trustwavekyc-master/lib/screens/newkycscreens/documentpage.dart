import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trustwavekyc/global/colors.dart';
import 'package:trustwavekyc/global/textstyles.dart';
import 'package:trustwavekyc/helpers/uihelper.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  XFile? id;
  XFile? face;

  pick() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.camera);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Upload Documents'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(),
                GestureDetector(
                  onTap: () async {
                    id = await pick();
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: ThemeColors.mainColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Capture Identity Image',
                      style: CustomTextStyles.medium.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () async {
                    face = await pick();
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: ThemeColors.mainColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Capture Your Face',
                      style: CustomTextStyles.medium.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () async {
                    UIHelper.loadingBlock(context: context);
                    await Future.delayed(Duration(seconds: 2));
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      color: ThemeColors.mainColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text(
                      'NEXT',
                      style: CustomTextStyles.medium.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
