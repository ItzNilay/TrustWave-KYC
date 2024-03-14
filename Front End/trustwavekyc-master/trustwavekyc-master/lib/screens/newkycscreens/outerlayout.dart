import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/global/colors.dart';
import 'package:trustwavekyc/global/textstyles.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/screens/newkycscreens/documentpage.dart';

class OuterLayoutWidget extends StatefulWidget {
  final Widget child;
  const OuterLayoutWidget({
    super.key,
    required this.child,
  });

  @override
  State<OuterLayoutWidget> createState() => _OuterLayoutWidgetState();
}

class _OuterLayoutWidgetState extends State<OuterLayoutWidget> {
  getSubTitle({required int index}) {
    if (index == 0 || index == 1) {
      return 'Personal Details';
    } else if (index == 2 || index == 3) {
      return 'Contact Details';
    } else {
      return 'Professional Details';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Tell us About You',
                  style: CustomTextStyles.bigBold,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  getSubTitle(
                      index: Provider.of<DetailFillerProvider>(context)
                          .currentIndex),
                  style: CustomTextStyles.medium.copyWith(
                    color: ThemeColors.mainColor,
                  ),
                ),
                const Spacer(),
                Text(
                  '${Provider.of<DetailFillerProvider>(context).currentIndex + 1}/5',
                  style: CustomTextStyles.small.copyWith(
                    color: ThemeColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      height: 7.5,
                      width: MediaQuery.of(context).size.width - 40,
                      color: Colors.black.withAlpha(30),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: 7.5,
                      width: (MediaQuery.of(context).size.width - 40) *
                          ((Provider.of<DetailFillerProvider>(context)
                                      .currentIndex +
                                  1) /
                              5),
                      decoration: BoxDecoration(
                        color: ThemeColors.mainColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // child comes here
          const SizedBox(height: 15),
          Expanded(
            child: widget.child,
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Visibility(
                  visible: (Provider.of<DetailFillerProvider>(context)
                              .currentIndex ==
                          0)
                      ? (false)
                      : (true),
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<DetailFillerProvider>(context, listen: false)
                          .prevScreen();
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text(
                        'BACK',
                        style: CustomTextStyles.medium.copyWith(
                          color: ThemeColors.mainColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (Provider.of<DetailFillerProvider>(context,
                                listen: false)
                            .currentIndex ==
                        4) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DocumentPage()));
                    }
                    Provider.of<DetailFillerProvider>(context, listen: false)
                        .nextScreen();
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
