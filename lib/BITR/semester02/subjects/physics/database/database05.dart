import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/mathsClass.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';

class database05PhysicsTwo extends StatefulWidget {

  database05PhysicsTwo({Key? key}) : super(key: key);

  @override
  State<database05PhysicsTwo> createState() => _database05PhysicsTwoState();
}

class _database05PhysicsTwoState extends State<database05PhysicsTwo> {
  Uint8List? _documentBytes;

  String path =
      'https://firebasestorage.googleapis.com/v0/b/notess-259ea.appspot.com/o/CSE_BITR_SEMESTER02%2FPHYSICS%2Filovepdf_merged.pdf?alt=media&token=a80e8339-e2be-4fc7-8a98-b39a955d7516';

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
      appBar: AppBar(title: const Text('Lasers and optic fibre'),
        backgroundColor: Colors.red,
      ),
      body: child,
    );
  }
}

