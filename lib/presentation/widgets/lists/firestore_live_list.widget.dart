import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:student/infrastructure/attendance/models/gathering.object.dart';
import 'package:student/presentation/widgets/cards/scan.widget.dart';

class FirestoreLiveListWidget extends StatelessWidget {
  FirestoreLiveListWidget({Key? key, required this.gathering})
      : super(key: key);

  final GatheringObject gathering;
  final firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestore.collection("collectionPath").snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SpinKitCubeGrid(
            color: Colors.blue,
            size: 40,
          );
        }

        final docs = snapshot.data!.docs;
        // docs.sort((a, b) {
        //   final aa = a.get("dateTime").toDate();
        //   final bb = b.get("dateTime").toDate();
        //   return bb.compareTo(aa);
        // });

        return ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: docs.length,
          itemBuilder: (context, index) => ScanWidget(
            dateTime: docs[index].get("scannedInAt"),
            scanIn: docs[index].get("scannedInAt"),
            scanOut: docs[index].get("scannedOutAt"),
            gathering: gathering,
          ),
        );
      },
    );
  }
}
