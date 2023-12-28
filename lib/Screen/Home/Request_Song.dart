import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chord_finder/color_utils.dart';
import 'package:lottie/lottie.dart';

class FirebaseNotePage extends StatefulWidget {
  @override
  _FirebaseNotePageState createState() => _FirebaseNotePageState();
}

class _FirebaseNotePageState extends State<FirebaseNotePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _requestController = TextEditingController();

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference notesCollection =
      FirebaseFirestore.instance.collection('Notes');

  @override
  void dispose() {
    _titleController.dispose();
    _requestController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Request Song",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                hexStringToColor("B8BAEF"),
                hexStringToColor("7276E0"),
                hexStringToColor("141CCC")
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                "https://assets1.lottiefiles.com/packages/lf20_kzgwt1om.json",
                height: size.height * 0.4,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _requestController,
                decoration: InputDecoration(
                  labelText: 'Request',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  addNoteToFirestore(
                      _titleController.text, _requestController.text);
                },
                child: Text('Add Note to Firestore'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addNoteToFirestore(String title, String request) async {
    Map<String, dynamic> note = {
      'Title': title,
      'Request': request,
    };

    await notesCollection.doc().set(note);

    _titleController.clear();
    _requestController.clear();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Note Added'),
          content: Text('The note has been added to Firestore.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
