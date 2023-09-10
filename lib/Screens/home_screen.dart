import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memo_app/style/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.mainColor,
        appBar: AppBar(
          elevation: 0.0,
          title: const Text('memoapp'),
          centerTitle: true,
          backgroundColor: AppStyle.mainColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "your recent notes",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("Notes")
                      .snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    //checking connection state, if still loading can display progress bar
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (snapshot.hasData) {
                      return GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2));
                    }

                    return Text(
                      "there is no notes to be displayed",
                      style: GoogleFonts.nunito(color: Colors.white),
                    );
                  }),
            ],
          ),
        ));
  }
}
