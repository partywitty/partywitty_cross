

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:partywitty_guest/Screen/Scan/congrats.dart';
import '../../Utils/Styles.dart';

class qrFirstScreen extends StatefulWidget {
  const qrFirstScreen({Key? key}) : super(key: key);

  @override
  State<qrFirstScreen> createState() => _qrFirstScreenState();
}

class _qrFirstScreenState extends State<qrFirstScreen> {
  final double _height = Get.height, _width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardBackGround,
      appBar: AppBar(
        backgroundColor: timeColor,
      ),
      body: Column(
        children: [
          const Spacer(),
          Image.asset('assest/cheer.png',fit: BoxFit.fill,height: _height*0.20,),
          Container(
            height: _height*0.60,
            width: _width,
            decoration: const BoxDecoration(
              color: bottomBarColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)),
            ),
            child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  const Text("You are entered",style: bigTitle),
                  const SizedBox(height: 20.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: appColor),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text("Feb 30, 2022  ",style: cardGreyText),
                            Icon(Icons.access_time_rounded,color: Colors.grey,size: 14),
                            Text("  05:25 PM",style: cardGreyText),
                          ],
                        ),
                        Text("    California party: 2022",style: GoogleFonts.poppins(textStyle: bigTitle)),
                        Row(
                          children: const [
                            Icon(Icons.disc_full,color: Colors.white,size: 16),
                            Text("  Sufi, Foke",style: cardTitle),
                          ],
                        ),
                        Text("4 People",style: GoogleFonts.poppins(textStyle: bottomText)),
                        Text("It is a long established fact that a reader will be distract by the readable content ",style: GoogleFonts.poppins(textStyle: bottomText)),
                        Row(
                          children: [
                            const Icon(Icons.location_pin,color: Colors.grey,size: 16),
                            Text("California, CA",style: GoogleFonts.poppins(textStyle: bottomText)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const congratsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: appColor,
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Text('Inform to Manager', style: GoogleFonts.poppins(textStyle: buttonText)),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      TextButton(
                          onPressed: (){}
                          , child: const Text("Ignore",style: cardRupeeRed,))
                    ],
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
