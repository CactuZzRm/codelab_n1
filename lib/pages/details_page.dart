import 'package:codelab_n1/models/mount_model.dart';
import 'package:codelab_n1/widgets/details_bottom_action.dart';
import 'package:flutter/material.dart';

import '../GLOBAL VARIABLES SECTION/variables.dart';
import '../widgets/details_rating_bar.dart';

class DetailsPage extends StatelessWidget {
  MountModel mount;

  DetailsPage(this.mount);

  @override
  Widget build(BuildContext context) {
    var selectedItem = mount;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(selectedItem.path),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7)
                      ], begin: Alignment.center, end: Alignment.bottomCenter)),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          selectedItem.name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          selectedItem.location,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    iconTheme: const IconThemeData(color: Colors.white),
                    title: const Center(
                      child: Icon(Icons.terrain, color: Colors.white, size: 40),
                    ),
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child:
                            Icon(Icons.pending, color: Colors.white, size: 40),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                DetailsRatingBar(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Text(
                          'About ${selectedItem.name}',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Text('${selectedItem.description}', style: const TextStyle(fontSize: 12))
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          DetailsBottomActions(),
        ],
      ),
    );
  }
}
