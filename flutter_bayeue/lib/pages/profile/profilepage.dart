import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/api/profile_api.dart';
import 'package:flutter_bayeue/model/response_profile_model.dart';
import 'package:flutter_bayeue/pages/profile/help/help.dart';
import 'package:flutter_bayeue/pages/profile/personal%20data/personal_data.dart';
import 'package:flutter_bayeue/pages/profile/privacy_policy/privacy.dart';
import 'package:flutter_bayeue/pages/profile/setting/setting.dart';
import 'package:flutter_bayeue/pages/profile/terms_conditions/terms_and_conditions_page.dart';
import 'package:flutter_bayeue/viewmodel/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_bayeue/pages/login/login_page.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  AccountModel? accountModel;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getProfileApi();
    });
  }

  void getProfileApi() async {
    accountModel = await ProfileApi.getResult();
    setState(() {});
    // accountModel = await ProfileApi.getResult();
  }

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight * 1.5,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        elevation: 0,
        title: Text(
          'Account',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.8)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                if (accountModel != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  accountModel!.result!.user!.image!),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          accountModel != null
                              ? ' ${accountModel!.result!.user!.name!}'
                              : '',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          accountModel != null
                              ? '${accountModel!.result!.user!.phone}'
                              : '',
                          style: const TextStyle(
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => const PersonalData(),
                    ),
                  );
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
                            color: Colors.blue.withOpacity(0.8),
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
                            color: Colors.blue.withOpacity(0.8),
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => HelpSupport()));
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
                            color: Colors.blue.withOpacity(0.8),
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
                            color: Colors.blue.withOpacity(0.8),
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
                            color: Colors.blue.withOpacity(0.8),
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
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.black,
              color: Colors.blue.withOpacity(0.8),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () async {
                  await authProvider.logOut();
                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
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
