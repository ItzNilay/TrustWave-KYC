import 'package:flutter/material.dart';
import 'package:trustwavekyc/global/textstyles.dart';
import 'package:trustwavekyc/screens/newkycscreens/newkycscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online KYC'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Profile: ',
                            style: CustomTextStyles.smallBold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('SBI Kyc'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Registered Date: ',
                            style: CustomTextStyles.smallBold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('12/03/2024'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Risk Level: ',
                            style: CustomTextStyles.smallBold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('No Risk'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Profile: ',
                            style: CustomTextStyles.smallBold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('HDFC Kyc'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Registered Date: ',
                            style: CustomTextStyles.smallBold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('13/03/2024'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Risk Level: ',
                            style: CustomTextStyles.smallBold,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('At Risk'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewKycScreen()));
        },
        label: const Text('New KYC'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
