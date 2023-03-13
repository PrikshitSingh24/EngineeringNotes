import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:notess/BITR/semesters/Subjects/Maths/mathsClass.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';

class database3Maths extends StatefulWidget {

  database3Maths({Key? key}) : super(key: key);

  @override
  State<database3Maths> createState() => _databaseMathsState();
}

class _databaseMathsState extends State<database3Maths> {
  Uint8List? _documentBytes;

  String path =
      'https://firebasestorage.googleapis.com/v0/b/notess-259ea.appspot.com/o/CSE_BITR_SEMESTER01%2FMaths%20unit%203.pdf?alt=media&token=f8da3a99-2312-4504-965c-c3aa4af09064';

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
      appBar: AppBar(title: const Text('Multivariable Calculus'),
        backgroundColor: Colors.red,
      ),
      body: child,
    );
  }
}
