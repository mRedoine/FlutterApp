import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carbon_app/models/projet_data_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ProjectLocalisation extends StatelessWidget {
  int cardList;
   ProjectLocalisation(this.cardList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: const Color(0XFFF8faf8),
          title: SizedBox(
              height: 35.0,
              child: Image.asset("assets/images/logo_carbonapp_2021.png")),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
            child: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition:  CameraPosition(
                target: LatLng(dummyData[cardList].coord_lat, dummyData[cardList].coord_long),
                zoom: dummyData[cardList].zoom,
              ),
            )
        )
    );
  }

}
