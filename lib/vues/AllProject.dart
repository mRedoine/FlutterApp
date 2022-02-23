import 'package:flutter/material.dart';

import '../models/projet_data_model.dart';
import 'ProjectDetail.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  void initState() {
    super.initState();
    projectFilter = dummyData;
  }
  bool isSearched = false;
  List projectFilter = [];
  void _filterprojects(value){
    setState(() {
      projectFilter = dummyData.where((p) => p.nomProjet.toLowerCase().contains(value.toLowerCase())).toList();

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFFF8faf8),
          title: isSearched == false
              ? SizedBox(height: 35.0,child: Image.asset("assets/images/logo_carbonapp_2021.png"))
              :  TextField(
            onChanged: (value){
              _filterprojects(value);
            },
            style: const TextStyle(color: Colors.deepOrange),
            decoration:
            const InputDecoration(
                      icon: Icon(Icons.search,  color: Colors.deepOrange,),
                      hintText: "Recherche de projet",
                      hintStyle: TextStyle(color: Colors.deepOrange)),
                ),
          actions: <Widget>[
            isSearched
                ? IconButton(
                    icon: const Icon(Icons.cancel, color: Colors.deepOrange,),
                    onPressed: () {
                      setState(() {
                        isSearched = false;
                        projectFilter = dummyData;
                      });
                    },
                  )
                : IconButton(
                    icon: const Icon(Icons.search, color: Colors.deepOrange,),
                    onPressed: () {
                      setState(() {
                        isSearched = true;
                      });
                    },
                  )
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: projectFilter.length > 0 ?
            ListView.builder(
                itemCount: projectFilter.length,
                itemBuilder: (context, index) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => DetailCard(
                                    projectFilter[index].nomProjet, index),
                              ));
                            },
                            child: Card(
                              margin: const EdgeInsets.all(12),
                              elevation: 4,
                              color: const Color.fromRGBO(248, 104, 0, .9),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          projectFilter[index].nomProjet,
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(height: 4),
                                        Text("Crédits :"+ dummyData[index].credit.toString(), style: TextStyle(color: Colors.white70)),
                                        Text(dummyData[index].date_deb, style: TextStyle(color: Colors.white70)),
                                      ],
                                    ),
                                    Spacer(),
                                    CircleAvatar( backgroundImage: NetworkImage(dummyData[index].url_pic)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]
                )
            ) :
            const Center (child: CircularProgressIndicator())
        )
    );
  }
}


/*
Card(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 8.0),
                                child: Text(
                                  projectFilter[index].nomProjet,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            )

 */