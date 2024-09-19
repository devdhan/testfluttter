import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 4),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFEAE3D1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(0, 0.5),
              ),
            ],
          ),
          child: Center(
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: const Color(0xFF000000),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              title: const Text(
                'About app',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(234, 227, 209, 1),
      body: const SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}