import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/mathsClass.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';

class databasePhysicsTwo extends StatefulWidget {

  databasePhysicsTwo({Key? key}) : super(key: key);

  @override
  State<databasePhysicsTwo> createState() => _databasePhysicsTwoState();
}

class _databasePhysicsTwoState extends State<databasePhysicsTwo> {
  Uint8List? _documentBytes;

  String path =
      'https://firebasestorage.googleapis.com/v0/b/notess-259ea.appspot.com/o/CSE_BITR_SEMESTER02%2FPHYSICS%2Fphysics%20unit%201%20notes.pdf?alt=media&token=cd616a65-5eba-4d73-816f-4d195d40c4e3';

  @override
  void initState() {
    getPdfBytes();
    super.initState();
  }

  void getPdfBytes() async {
    if (kIsWeb) {
      firebase_storage.Reference pdfRef =
      firebase_storage.FirebaseStorage.instanceFor(
          bucket: 'notess-259ea.appspot.com')
          .refFromURL(path);
      //size mentioned here is max size to download from firebase.
      await pdfRef.getData(104857600).then((value) {
        _documentBytes = value;
        setState(() {});
      });
    } else {
      HttpClient client = HttpClient();
      final Uri url = Uri.base.resolve(path);
      final HttpClientRequest request = await client.getUrl(url);
      final HttpClientResponse response = await request.close();
      _documentBytes = await consolidateHttpClientResponseBytes(response);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child = const Center(child: CircularProgressIndicator());
    if (_documentBytes != null) {
      child = SfPdfViewer.memory(
        _documentBytes!,
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Physical quantities,Motion in two or three dimensions'),
        backgroundColor: Colors.red,
      ),
      body: child,
    );
  }
}

