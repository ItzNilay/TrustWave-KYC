import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/widgets/detailsfillerwidgets/labelfieldwidget.dart';

class OccupationFiller extends StatelessWidget {
  const OccupationFiller({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelFieldWidget(
            labelText: 'Occupation',
            textEditingController:
                Provider.of<DetailFillerProvider>(context).occupationController,
          ),
          LabelFieldWidget(
              labelText: 'Company',
              textEditingController:
                  Provider.of<DetailFillerProvider>(context).companyController),
          LabelFieldWidget(
            labelText: 'Industry',
            textEditingController:
                Provider.of<DetailFillerProvider>(context).industryController,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ],
      ),
    );
  }
}
