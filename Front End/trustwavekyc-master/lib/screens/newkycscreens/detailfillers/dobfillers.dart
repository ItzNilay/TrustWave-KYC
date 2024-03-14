import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/global/textstyles.dart';
import 'package:trustwavekyc/helpers/uihelper.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/widgets/detailsfillerwidgets/labelfieldwidget.dart';

class DOBFiller extends StatelessWidget {
  const DOBFiller({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Date of Birth',
                    style: CustomTextStyles.small.copyWith(
                      color: Colors.black.withAlpha(150),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.black.withAlpha(150),
                      width: 0.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        (Provider.of<DetailFillerProvider>(context).dob == null)
                            ? ('dd/mm/yyyy')
                            : (UIHelper.formatDate(
                                dateTime:
                                    Provider.of<DetailFillerProvider>(context)
                                        .dob!)),
                        style: CustomTextStyles.small.copyWith(
                          color: Colors.black.withAlpha(150),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          DateTime? date =
                              await UIHelper.pickDob(context: context);
                          if (date != null) {
                            Provider.of<DetailFillerProvider>(context,
                                    listen: false)
                                .setDob(date: date);
                          }
                        },
                        icon: Icon(
                          Icons.date_range_rounded,
                          color: Colors.black.withAlpha(120),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Gender',
                    style: CustomTextStyles.small.copyWith(
                      color: Colors.black.withAlpha(150),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.fastLinearToSlowEaseIn,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color:
                                    (Provider.of<DetailFillerProvider>(context)
                                                .gender ==
                                            true)
                                        ? (Colors.grey)
                                        : (Colors.white),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                'Male',
                                style: CustomTextStyles.smallBold.copyWith(
                                    color: (Provider.of<DetailFillerProvider>(
                                                    context)
                                                .gender ==
                                            true)
                                        ? (Colors.white)
                                        : (Colors.grey)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.fastLinearToSlowEaseIn,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color:
                                    (Provider.of<DetailFillerProvider>(context)
                                                .gender ==
                                            false)
                                        ? (Colors.grey)
                                        : (Colors.white),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                'Female',
                                style: CustomTextStyles.smallBold.copyWith(
                                    color: (Provider.of<DetailFillerProvider>(
                                                    context)
                                                .gender ==
                                            false)
                                        ? (Colors.white)
                                        : (Colors.grey)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Provider.of<DetailFillerProvider>(context,
                                        listen: false)
                                    .setGender(gen: true);
                              },
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Provider.of<DetailFillerProvider>(context,
                                        listen: false)
                                    .setGender(gen: false);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          LabelFieldWidget(
            labelText: 'Country of Birth',
            textEditingController: Provider.of<DetailFillerProvider>(context)
                .countryOfBirthController,
          ),
          LabelFieldWidget(
            labelText: 'Nationality',
            textEditingController: Provider.of<DetailFillerProvider>(context)
                .nationalityController,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ],
      ),
    );
  }
}
