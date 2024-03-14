import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/screens/newkycscreens/detailfillers/addressfiller.dart';
import 'package:trustwavekyc/screens/newkycscreens/detailfillers/dobfillers.dart';
import 'package:trustwavekyc/screens/newkycscreens/detailfillers/emaildetails.dart';
import 'package:trustwavekyc/screens/newkycscreens/detailfillers/nameandid.dart';
import 'package:trustwavekyc/screens/newkycscreens/detailfillers/occupationfiller.dart';
import 'package:trustwavekyc/screens/newkycscreens/outerlayout.dart';

class NewKycScreen extends StatefulWidget {
  const NewKycScreen({super.key});

  @override
  State<NewKycScreen> createState() => _NewKycScreenState();
}

class _NewKycScreenState extends State<NewKycScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: OuterLayoutWidget(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller:
                Provider.of<DetailFillerProvider>(context).pageController,
            children: const [
              NameIdFillers(),
              DOBFiller(),
              EmailFiller(),
              AddressFiller(),
              OccupationFiller(),
            ],
          ),
        ),
      ),
    );
  }
}
