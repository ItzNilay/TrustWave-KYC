import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/widgets/detailsfillerwidgets/labelfieldwidget.dart';

class NameIdFillers extends StatelessWidget {
  const NameIdFillers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelFieldWidget(
            labelText: 'Name',
            textEditingController:
                Provider.of<DetailFillerProvider>(context).nameController,
          ),
          LabelFieldWidget(
              labelText: 'Identity Card No.',
              textInputType: TextInputType.number,
              textEditingController: Provider.of<DetailFillerProvider>(context)
                  .identityController),
          LabelFieldWidget(
            labelText: 'Passport No.',
            textInputType: TextInputType.number,
            textEditingController:
                Provider.of<DetailFillerProvider>(context).passportController,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ],
      ),
    );
  }
}
