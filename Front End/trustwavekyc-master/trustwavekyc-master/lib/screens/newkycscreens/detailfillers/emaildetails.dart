import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/widgets/detailsfillerwidgets/labelfieldwidget.dart';

class EmailFiller extends StatelessWidget {
  const EmailFiller({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelFieldWidget(
            labelText: 'Email',
            textInputType: TextInputType.emailAddress,
            textEditingController:
                Provider.of<DetailFillerProvider>(context).emailController,
          ),
          LabelFieldWidget(
            labelText: 'Telephone Number',
            textInputType: TextInputType.number,
            textEditingController:
                Provider.of<DetailFillerProvider>(context).telephoneController,
          ),
          LabelFieldWidget(
            labelText: 'Mobile Number',
            textInputType: TextInputType.number,
            textEditingController:
                Provider.of<DetailFillerProvider>(context).mobileController,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ],
      ),
    );
  }
}
