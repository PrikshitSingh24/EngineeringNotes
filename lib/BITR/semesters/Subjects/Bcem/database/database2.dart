import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/mathsClass.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';

class databasebcemTwo extends StatefulWidget {

  databasebcemTwo({Key? key}) : super(key: key);

  @override
  State<databasebcemTwo> createState() => _databasebcemTwoState();
}

class _databasebcemTwoState extends State<databasebcemTwo> {
  Uint8List? _documentBytes;

  String path =
      'https://firebasestorage.googleapis.com/v0/b/notess-259ea.appspot.com/o/CSE_BITR_SEMESTER01%2Fbcem%2FUNIT%202%20BCE%20NOTES.pdf?alt=media&token=54546742-6075-4d9e-a30c-5760a498c1d7';

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
      appBar: AppBar(title: const Text('Building Construction'),
        backgroundColor: Colors.red,
      ),
      body: child,
    );
  }
}
