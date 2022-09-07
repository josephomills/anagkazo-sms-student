import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:student/domain/attendance/lectureType.enum.dart';
import 'package:student/domain/attendance/scanType.enum.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/presentation/widgets/avatar.widget.dart';
import 'package:student/presentation/widgets/scan.widget.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  late ScrollController ctrl;
  late bool addTitleToAppBar;
  String title = "Attendance";
  final db = FirebaseFirestore.instance;
  String id = "";

  @override
  void initState() {
    ctrl = ScrollController();
    addTitleToAppBar = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: AuthStateListener(
        listener: (oldState, state, controller) {
          if (state is SignedIn) {
            setState(() {
              id = state.user!.uid;
            });
          }

          if (oldState is SignedIn) {
            setState(() {
              id = oldState.user!.uid;
            });
          }
          return null;
        },
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text(
                "Attendance",
                style: TextStyle(color: Colors.black87, fontSize: 28),
              ),
              elevation: 0,
              backgroundColor:
                  addTitleToAppBar ? Colors.white : Colors.transparent,
              actions: const [
                AvatarWidget(
                  url:
                      "https://images.pexels.com/photos/3145570/pexels-photo-3145570.jpeg",

                  // url: FirebaseAuth.instance.currentUser!.photoURL ?? "",
                ),
              ],
              bottom: const TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 0),
                labelColor: Colors.blue,
                labelStyle:
                    TextStyle(fontSize: 12, overflow: TextOverflow.visible),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Vision Lecture",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.account_balance,
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Pillar Lecture",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.location_city,
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Anagkazo Live",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.church,
                      color: Colors.blue,
                    ),
                    child: Text(
                      "FL Experience",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.groups,
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Other Events",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            // body: NotificationListener<ScrollNotification>(
            //   onNotification: (notification) {
            //     if (notification.metrics.pixels > 30) {
            //       setState(() {
            //         addTitleToAppBar = true;
            //       });
            //     } else {
            //       setState(() {
            //         addTitleToAppBar = false;
            //       });
            //     }

            //     return true;
            //   },
            //   child:
            body: TabBarView(
              physics: const ClampingScrollPhysics(),
              children: [
                buildAttendanceList(lectureType: LectureType.vision),
                buildAttendanceList(lectureType: LectureType.pillar),
                buildAttendanceList(lectureType: LectureType.anagkazoLive),
                buildAttendanceList(
                    lectureType: LectureType.firstLoveExperience),
                buildAttendanceList(lectureType: LectureType.foundational),
              ],
            ),

            floatingActionButton: FloatingActionButton(
              onPressed: (() async {
                // Check camera permission before opening scan page
                var status = await Permission.camera.status;
                if (status.isDenied) {
                  await Permission.camera.request();
                }

                if (status.isGranted) {
                  AutoRouter.of(context).push(const ScanRoute());
                }
              }),
              tooltip: 'Scan QR Code',
              child: const Icon(
                Icons.qr_code_scanner,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }

  StreamBuilder<QuerySnapshot<Object?>> buildAttendanceList(
      {required LectureType lectureType}) {
    return StreamBuilder<QuerySnapshot>(
      stream: db
          .collection("ta/${FirebaseAuth.instance.currentUser!.uid}/attendance")
          .where("lecture", isEqualTo: lectureType.value)
          // .orderBy("dateTime", descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        List docs = [];

        if (snapshot.hasData) {
          docs = snapshot.data!.docs;
        }

        // empty
        if (docs.isEmpty) {
          return const Center(
            child: Text("Empty"),
          );
        }

        // docs.sort((a, b) {
        //   final aa = a.get("dateTime").toDate();
        //   final bb = b.get("dateTime").toDate();
        //   return bb.compareTo(aa);
        // });

        return ListView.builder(
          controller: ctrl,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: snapshot.data!.size,
          itemBuilder: (context, index) {
            // only include lecture type

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ScanWidget(
                dateTime: DateTime.parse(
                    docs[index].get("dateTime").toDate().toString()),
                lectureType: (docs[index].get("lecture") as String).lectureType,
                scanType: (docs[index].get("type") as String).scanType,
              ),
            );
          },
        );
      },
    );
  }
}
