import 'package:flutter/material.dart';
import 'package:tutorials/components/bottom_textfield.dart';
import 'package:tutorials/components/my_button.dart';
import 'package:tutorials/pages/about_app.dart';
import 'package:tutorials/components/custom_drawer.dart';
import 'package:tutorials/pages/chat_two.dart';
//import 'package:tutorials/pages/search_history.dart';

class ChatOne extends StatefulWidget {
  const ChatOne({super.key});

  @override
  _ChatOneState createState() => _ChatOneState();
}

class _ChatOneState extends State<ChatOne> {
  final messageController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  // Navigate to About page
  void about(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AboutApp()),
    );
  }

  // Navigate to Search History
  void chatTwo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChatTwo()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
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
          //APPBAR
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.sort),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/blankcircle.png',
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'APOLLO ChatBox',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () => chatTwo(context),
                  icon: const Icon(Icons.history),
                  color: const Color(0xFF000000),
                ),
              )
            ],
          ),
        ),
      ),
      //DRAWER
      drawer: const CustomDrawer(),
      //BODY
      backgroundColor: const Color.fromRGBO(234, 227, 209, 1),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/image.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            const Positioned(
              top: 100.0,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Hello, there\nHow can I help you\ntoday?',
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF11100B),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 300.0,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Suggestions:',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            //Suggestion buttons
            Positioned(
              top: 340.0,
              left: 0,
              right: 0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    height: 68,
                    child: MyButton(
                      onTap: () {},
                      buttonText:
                          'Which universities can I go in Lagos state, Nigeria?',
                      buttoncolor: const Color.fromRGBO(17, 16, 11, 1),
                      buttonTextColor: const Color(0xFFEAE3D1),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 430.0,
              left: 0,
              right: 0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    height: 68,
                    child: MyButton(
                      onTap: () {},
                      buttonText: 'What is the cut-off mark for Jamb?',
                      buttoncolor: const Color(0xFF11100B),
                      buttonTextColor: const Color(0xFFEAE3D1),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 525.0,
              left: 0,
              right: 0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    height: 68,
                    child: MyButton(
                      onTap: () {},
                      buttonText:
                          'What is the WAEC subject combination for computer science',
                      buttoncolor: const Color(0xFF11100B),
                      buttonTextColor: const Color(0xFFEAE3D1),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
            //Chat Textfield
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomTextField(
                messageController: messageController,
                focusNode: _focusNode,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
