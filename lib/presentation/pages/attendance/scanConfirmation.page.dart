import 'dart:io';

import 'package:auto_route/auto_route.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student/core/util/util.dart';

class ScanConfirmationPage extends StatefulWidget {
  const ScanConfirmationPage({Key? key, required this.details})
      : super(key: key);

  final Map<String, dynamic> details;

  @override
  State<ScanConfirmationPage> createState() => _ScanConfirmationPageState();
}

class _ScanConfirmationPageState extends State<ScanConfirmationPage> {
  String _classVal = "Select a class...";
  String _lectureVal = "Select a lecture...";
  final _formKey = GlobalKey();
  bool isSelfieTaken = false;
  XFile selfie = XFile("");

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Center(child: Text("QR Code Detected")),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  const Center(
                    child: Icon(
                      Icons.qr_code_scanner,
                      size: 72,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                      child:
                          Text("SCANNED " + widget.details["type"]! + " AT")),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      formatDate(widget.details["dateTime"]!.toDate()),
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _classDropdown(),
                  const SizedBox(height: 24),
                  _lectureDropdown(),
                  const SizedBox(height: 24),
                  // Image holder
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 300,
                          height: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: isSelfieTaken
                                  ? FileImage(File(selfie.path))
                                      as ImageProvider
                                  : const AssetImage(
                                      "assets/avatar_generic.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 2,
                        right: 40,
                        child: IconButton(
                          iconSize: 48,
                          onPressed: () async {
                            final image = (await ImagePicker()
                                .pickImage(source: ImageSource.camera))!;
                            setState(() {
                              selfie = image;
                              isSelfieTaken = true;
                            });
                          },
                          icon: Icon(
                            Icons.photo_camera,
                            color:
                                isSelfieTaken ? Colors.white : Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          _buttons(),
        ],
      ),
    );
  }

  Material confirmationDialogMaterial(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(8),
          height: 340,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Icon(
                Icons.qr_code_scanner,
                size: 72,
                color: Colors.blue,
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.center,
                child: Text("QR Code Detected"),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.details["classOf"]! as String,
                  style: const TextStyle(color: Colors.blue),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.details["lecture"]! as String,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.center,
                child: Text("Lecture"),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () => AutoRouter.of(context).pop(),
                    child: const Text("Scan Again"),
                  ),
                  const SizedBox(width: 24),
                  ElevatedButton(
                    onPressed: () {
                      // record attendance
                      recordAttendance();

                      // close modal
                      AutoRouter.of(context).pop();
                      // go back to Attendance page
                      AutoRouter.of(context).navigateBack();
                    },
                    child: const Text("Confirm & Record"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void recordAttendance() {
    // FirebaseFirestore.instance
    //     .collection("ta/${FirebaseAuth.instance.currentUser!.uid}/attendance")
    //     .add({
    //       "lecture": _lectureVal,
    //       "classOf": _classVal,
    //       "type": widget.details["type"]! as String,
    //       "dateTime": widget.details["dateTime"],
    //     })
    //     .then((ref) => print("Record added"))
    //     .onError((error, stackTrace) => null);
  }

  bool isValidScan(DateTime dateTime) {
    bool isValid = false;
    final today = DateTime.now().toUtc();

    // Scan is valid if it is scanned at least 30 minutes before the start of the lecture,
    // between 10am - 1pm
    // from Tuesday to Friday
    if (dateTime.weekday != DateTime.monday &&
        dateTime.weekday != DateTime.saturday &&
        dateTime.weekday != DateTime.sunday &&
        dateTime.hour >= 10 &&
        dateTime.hour < 13) {
      isValid = true;
    }

    return isValid;
  }

  FutureBuilder _fAllDropdowns() {
    return FutureBuilder<Object>(
        future: null,
        builder: (context, snapshot) {
          return ListView();
        });
  }

  DropdownButtonFormField _classDropdown() {
    return DropdownButtonFormField(
      validator: (value) {
        return null;
      },
      value: _classVal,
      items: const [
        DropdownMenuItem(
          child: Text("Select a class..."),
          value: "Select a class...",
        ),
        DropdownMenuItem(
          child: Text("2022"),
          value: "2022",
        ),
        DropdownMenuItem(
          child: Text("2023B"),
          value: "2023B",
        ),
        DropdownMenuItem(
          child: Text("2024A"),
          value: "2024A",
        ),
        DropdownMenuItem(
          child: Text("2024B"),
          value: "2024B",
        ),
        DropdownMenuItem(
          child: Text("2025A"),
          value: "2025A",
        ),
      ],
      onChanged: (value) => setState(() {
        _classVal = value;
      }),
    );
  }

  DropdownButtonFormField _lectureDropdown() {
    return DropdownButtonFormField(
      value: _lectureVal,
      items: const [
        DropdownMenuItem(
          child: Text("Select a lecture..."),
          value: "Select a lecture...",
        ),
        DropdownMenuItem(
          child: Text("Vision"),
          value: "Vision",
        ),
        DropdownMenuItem(
          child: Text("Pillar"),
          value: "Pillar",
        ),
        DropdownMenuItem(
          child: Text("Foundational"),
          value: "Foundational",
        ),
        DropdownMenuItem(
          child: Text("Tutorial"),
          value: "Tutorial",
        ),
      ],
      onChanged: (value) => setState(() {
        _lectureVal = value;
      }),
    );
  }

  Align _buttons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black54,
              tapTargetSize: MaterialTapTargetSize.padded,
              fixedSize: Size(MediaQuery.of(context).size.width / 2, 56),
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => AutoRouter.of(context).pop(),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              tapTargetSize: MaterialTapTargetSize.padded,
              fixedSize: Size(MediaQuery.of(context).size.width / 2, 56),
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: const Text(
              "Confirm",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              // record attendance
              recordAttendance();
              // go back to Attendance page
              AutoRouter.of(context).popUntilRoot();
            },
          ),
        ],
      ),
    );
  }
}
