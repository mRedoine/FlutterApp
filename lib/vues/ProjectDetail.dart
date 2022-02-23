import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';

import '../models/projet_data_model.dart';
import 'Localisation.dart';

class DetailCard extends StatelessWidget {
  final String name;
  final int cardList;
  const DetailCard(this.name, this.cardList);

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
      body: Column(
        children: <Widget>[
          Expanded(

            child:SizedBox(
              height: 150.0,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: <Widget>[
                    FlipCard(
                        front: const Card(
                          elevation: 10,
                          child: Expanded(
                            child: Center(
                                child: Text(
                                  "Porteur",
                                  style:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        back: Card(
                          color: const Color.fromRGBO(246, 104, 0, 1),
                          elevation: 10,
                          child: Column(
                            children: [
                              const Padding(padding: EdgeInsets.all(6)),
                              Container(
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                      NetworkImage(dummyData[cardList].profilepic),
                                    )),
                                margin: const EdgeInsets.symmetric(vertical: 2),
                              ),
                              Center(
                                child: Text(
                                  'Nom: ' +
                                      dummyData[cardList].nom +
                                      "\n\n" +
                                      'Prenom: ' +
                                      dummyData[cardList].prenom +
                                      "\n\n" +
                                      'Courriel: ' +
                                      dummyData[cardList].courriel +
                                      "\n\n",
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  //Text(dummyData[num].ville, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)
                                ),
                              )
                            ],
                          ),
                        )),
                    Carte(
                      title: 'Projet',
                      num: cardList,
                    ),
                    Carte(
                      title: 'Financeur',
                      num: cardList,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProjectLocalisation(cardList)));
                      },
                      child: const Card(
                        color: Colors.white70,
                        elevation: 10,
                        child: Center(
                            child: Text(
                              'Localisation',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange),
                              //Text(dummyData[num].ville, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)
                            )),
                      ),
                    ),
                  ],
                )
            ) ,
          ),
          SizedBox(
            height: kIsWeb ? 300.0 : 200,
            width: kIsWeb ? 1000.0 : 800,
            child: InteractiveViewer(
              boundaryMargin: const EdgeInsets.all(8.0),
              minScale: 0.1,
              maxScale: 1.6,
              onInteractionUpdate: (_) => print("Interaction Updated"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    dummyData[cardList].url_pic,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )],
      ),
    );
  }
}

class Carte extends StatelessWidget {
  final String title;
  final int num;

  const Carte({Key? key, required this.title, required this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.VERTICAL,
      front: Card(
        elevation: 10,
        child: Center(
            child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
      back: Card(
        color: const Color.fromRGBO(246, 104, 0, 1),
        elevation: 10,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(6)),
            Column(
              children: [
                Text(
                  title == 'Projet'
                      ? dummyData[num].nomProjet +
                          "\n\n" +
                          'Desc: ' +
                          dummyData[num].projetDescription +
                          "\n\n" +
                          dummyData[num].surface +
                          "\n\n" +
                          'Tonnage: ' +
                          dummyData[num].tonnage.toString() +
                          "\n\n"
                      : title == 'Financeur'
                          ? dummyData[num].financeur
                          : 'youpo',
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  //Text(dummyData[num].ville, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
