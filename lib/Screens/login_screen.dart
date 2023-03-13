import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:susulearn_tablet/Screens/problemset_select_screen.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void _onTabNext(context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const ProblemsetSelectScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    });

    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: Sizes.size80 + Sizes.size80),
                      child: Column(
                        children: [
                          const Text(
                            "수학이 재미있다. 스스런",
                            style: TextStyle(
                              fontSize: Sizes.size24,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gaps.v20,
                          Text(
                            "힌트와 함께하는 재밌는 수학",
                            style: TextStyle(
                              fontSize: Sizes.size24,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.size24),
                      child: FractionallySizedBox(
                        // heightFactor: 0.3,
                        child: Image.asset("assets/mainPage.png"),
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: Sizes.size80),
                        child: CupertinoButton(
                          onPressed: () {
                            _onTabNext(context);
                          },
                          color: Theme.of(context).primaryColor,
                          child: const Text(
                            "계속하기",
                            style: TextStyle(
                                fontSize: Sizes.size36,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
