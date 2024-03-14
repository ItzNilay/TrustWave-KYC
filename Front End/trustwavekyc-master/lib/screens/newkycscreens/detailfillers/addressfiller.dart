import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/widgets/detailsfillerwidgets/labelfieldwidget.dart';

class AddressFiller extends StatelessWidget {
  const AddressFiller({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelFieldWidget(
            labelText: 'Permanent Address',
            textEditingController:
                Provider.of<DetailFillerProvider>(context).addressController,
          ),
          LabelFieldWidget(
              labelText: 'City',
              textEditingController:
                  Provider.of<DetailFillerProvider>(context).cityController),
          LabelFieldWidget(
            labelText: 'State',
            textEditingController:
                Provider.of<DetailFillerProvider>(context).stateController,
          ),
          LabelFieldWidget(
            labelText: 'Country',
            textEditingController:
                Provider.of<DetailFillerProvider>(context).countryController,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ],
      ),
    );
  }
}
