import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/api/auth_api.dart';
import 'package:flutter_bayeue/model/api/profile_api.dart';
import 'package:flutter_bayeue/model/response_profile_model.dart';
import 'package:flutter_bayeue/viewmodel/auth_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
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
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        toolbarHeight: kToolbarHeight * 1.2,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            UniconsLine.angle_left_b,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: Text(
          'Personal Data',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.8)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          if (accountModel != null)
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    padding: const EdgeInsets.all(20),
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
                  Positioned(
                    right: 1,
                    bottom: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Colors.blue),
                      child: IconButton(
                        onPressed: () {
                          authProvider.changeprofile(
                              'nama', 'email', 'password', 'phone', 'File');
                        },
                        icon: const Icon(
                          UniconsLine.camera,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Nama',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Text(
              accountModel != null
                  ? ' ${accountModel!.result!.user!.name!}'
                  : '',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Text(
              accountModel != null
                  ? ' ${accountModel!.result!.user!.email!}'
                  : '',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'No Hp',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Text(
              accountModel != null
                  ? ' ${accountModel!.result!.user!.phone}'
                  : '',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'SUBMIT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
