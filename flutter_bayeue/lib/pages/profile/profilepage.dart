import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/profile/privacy_policy/privacy.dart';
import 'package:flutter_bayeue/pages/profile/setting/setting.dart';
import 'package:flutter_bayeue/pages/profile/terms_conditions/terms_and_conditions_page.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_bayeue/pages/login/login_page.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 244, 254),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            'Account',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.black.withOpacity(0.8)),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 227, 244, 254),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://picsum.photos/id/870/200/300?grayscale&blur=2')),
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Udin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          '085260063022',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(58, 162, 220, 1),
                            fontSize: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {},
                child: SizedBox(
                  height: 80,
                  width: 366,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(58, 162, 220, 1),
                          ),
                          child: const Icon(
                            UniconsLine.user,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'Personal Data',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Setting()));
                },
                child: SizedBox(
                  height: 80,
                  width: 366,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(58, 162, 220, 1),
                          ),
                          child: const Icon(
                            UniconsLine.setting,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'Setting',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {},
                child: SizedBox(
                  height: 80,
                  width: 366,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(58, 162, 220, 1),
                          ),
                          child: const Icon(
                            UniconsLine.comment_add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'Help and Support',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TermsCondition()));
                },
                child: SizedBox(
                  height: 80,
                  width: 366,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(58, 162, 220, 1),
                          ),
                          child: const Icon(
                            UniconsLine.exclamation_triangle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'Terms & Conditions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Privacy()));
                },
                child: SizedBox(
                  height: 80,
                  width: 366,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(58, 162, 220, 1),
                          ),
                          child: const Icon(
                            UniconsLine.lock_open_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.black,
              color: const Color.fromRGBO(58, 162, 220, 1),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginPage(),
                      ));
                },
                child: SizedBox(
                  height: 60,
                  width: 366,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Logout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
